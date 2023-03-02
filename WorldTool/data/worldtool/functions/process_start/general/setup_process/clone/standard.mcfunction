# Called by worldtool:process_start/general/setup_process/clone/load
# Sets up the clone process in standard mode

# Well, this doesn't work properly with rotation right now...

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.clone\\"","storage":"worldtool:storage"}',ID:"worldtool:clone",Tags:["wt.process.clone","wt.message.clone","wt.message.non_default","wt.secondary_process_entity"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:clone"}].Value

execute if entity @s[tag=wt.clone.move] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.move"

execute if entity @s[tag=!wt.clone.rotate] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.normal"
execute if entity @s[tag=wt.clone.rotate] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.rotate"

execute if entity @s[tag=wt.two_block_query.normal] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.filter.normal"
execute if entity @s[tag=wt.two_block_query.normal] run data modify storage worldtool:storage Processes[0].SecondaryTags append value "wt.process.clone.filter.normal"
execute if entity @s[tag=wt.two_block_query.exclude] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.filter.exclude"
execute if entity @s[tag=wt.two_block_query.exclude] run data modify storage worldtool:storage Processes[0].SecondaryTags append value "wt.process.clone.filter.exclude"

execute if entity @s[tag=wt.clone.mirror.x] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.mirror.x"
execute if entity @s[tag=wt.clone.mirror.y] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.mirror.y"
execute if entity @s[tag=wt.clone.mirror.z] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.mirror.z"

execute store result storage worldtool:storage Processes[0].Input.Rotation.X int 1 run scoreboard players get @s wt.rotX
execute store result storage worldtool:storage Processes[0].Input.Rotation.Y int 1 run scoreboard players get @s wt.rotY
execute store result storage worldtool:storage Processes[0].Input.Rotation.Z int 1 run scoreboard players get @s wt.rotZ

function worldtool:process_start/general/set_process_values

# Change the starting position based on rotation and direction locking
scoreboard players set #offsetX worldtool 0
scoreboard players set #offsetZ worldtool 0

scoreboard players operation #offsetY worldtool = #pos1yt worldtool
scoreboard players operation #offsetY worldtool -= #pos2yt worldtool

execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[0].Positions.Secondary[0]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[0].Positions.Secondary[1]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Processes[0].Positions.Secondary[2]

execute store success score #temp worldtool if score #offsetY worldtool matches 1..

function worldtool:ui_general/clone/get_rotation_offset/get_rot_selection
function worldtool:ui_general/clone/get_rotation_offset/rotate_offsets
scoreboard players operation #pos1xt worldtool -= #offsetX worldtool
scoreboard players operation #pos1yt worldtool -= #offsetY worldtool
scoreboard players operation #pos1zt worldtool -= #offsetZ worldtool
execute if score #temp worldtool matches 1 store result storage worldtool:storage Processes[0].Positions.Secondary[0] double 1 run scoreboard players get #pos1xt worldtool
execute if score #temp worldtool matches 1 store result storage worldtool:storage Processes[0].Positions.Secondary[1] double 1 run scoreboard players get #pos1yt worldtool
execute if score #temp worldtool matches 1 store result storage worldtool:storage Processes[0].Positions.Secondary[2] double 1 run scoreboard players get #pos1zt worldtool

execute if entity @s[tag=wt.clone.move] run data modify storage worldtool:storage Temp.NextPositions set value [{}]
execute if entity @s[tag=wt.clone.move] run data modify storage worldtool:storage Temp.NextPositions[0] set from storage worldtool:storage Processes[0].Positions

function worldtool:process_start/common/lock_direction/from_bottom

execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[0].Positions.1[0]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[0].Positions.1[1]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Processes[0].Positions.1[2]

execute store result score #pos2xt worldtool run data get storage worldtool:storage Processes[0].Positions.2[0]
execute store result score #pos2yt worldtool run data get storage worldtool:storage Processes[0].Positions.2[1]
execute store result score #pos2zt worldtool run data get storage worldtool:storage Processes[0].Positions.2[2]

scoreboard players operation #offsetX worldtool = #pos2xt worldtool
scoreboard players operation #offsetX worldtool -= #pos1xt worldtool
scoreboard players operation #offsetY worldtool = #pos2yt worldtool
scoreboard players operation #offsetY worldtool -= #pos1yt worldtool
scoreboard players operation #offsetZ worldtool = #pos2zt worldtool
scoreboard players operation #offsetZ worldtool -= #pos1zt worldtool

function worldtool:ui_general/clone/get_rotation_offset/rotate_offsets

# Change the starting position based on rotation
execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[0].Positions.Secondary[0]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[0].Positions.Secondary[1]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Processes[0].Positions.Secondary[2]

scoreboard players operation #pos2xt worldtool = #pos1xt worldtool
scoreboard players operation #pos2xt worldtool += #offsetX worldtool
scoreboard players operation #pos2yt worldtool = #pos1yt worldtool
scoreboard players operation #pos2yt worldtool += #offsetY worldtool
scoreboard players operation #pos2zt worldtool = #pos1zt worldtool
scoreboard players operation #pos2zt worldtool += #offsetZ worldtool

data modify storage worldtool:storage Processes[0].AffectedArea set value {To:[0d,0d,0d]}
data modify storage worldtool:storage Processes[0].AffectedArea.From set from storage worldtool:storage Processes[0].Positions.Secondary
execute store result storage worldtool:storage Processes[0].AffectedArea.To[0] double 1 run scoreboard players get #pos2xt worldtool
execute store result storage worldtool:storage Processes[0].AffectedArea.To[1] double 1 run scoreboard players get #pos2yt worldtool
execute store result storage worldtool:storage Processes[0].AffectedArea.To[2] double 1 run scoreboard players get #pos2zt worldtool

function worldtool:technical/save_load/backup/load

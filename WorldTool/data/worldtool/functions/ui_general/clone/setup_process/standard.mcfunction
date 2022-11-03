# Called by worldtool:ui_general/clone/setup_process/load
# Sets up the clone process in standard mode

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.clone\\"","storage":"worldtool:storage"}',ID:"worldtool:clone",Tags:["wt.process.clone","wt.message.clone","wt.message.non_default","wt.secondary_process_entity"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:clone"}].Value

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

function worldtool:process_start/common/set_process_values

function worldtool:process_start/common/lock_direction/from_bottom
scoreboard players operation #diffY worldtool = #pos1yt worldtool
scoreboard players operation #diffY worldtool -= #pos2yt worldtool
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[0].Positions.Secondary[1]
scoreboard players operation #pos1yt worldtool -= #diffY worldtool
execute if score #diffY worldtool matches 1.. store result storage worldtool:storage Processes[0].Positions.Secondary[1] double 1 run scoreboard players get #pos1yt worldtool

data modify storage worldtool:storage Processes[0].AffectedArea.From set from storage worldtool:storage Processes[0].Positions.Secondary

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

function worldtool:ui_general/clone/get_rotation_offset/load

execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[0].Positions.Secondary[0]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[0].Positions.Secondary[1]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Processes[0].Positions.Secondary[2]

scoreboard players operation #pos2xt worldtool = #pos1xt worldtool
scoreboard players operation #pos2xt worldtool += #offsetX worldtool
scoreboard players operation #pos2yt worldtool = #pos1yt worldtool
scoreboard players operation #pos2yt worldtool += #offsetY worldtool
scoreboard players operation #pos2zt worldtool = #pos1zt worldtool
scoreboard players operation #pos2zt worldtool += #offsetZ worldtool

data modify storage worldtool:storage Processes[0].AffectedArea.To set value [0d,0d,0d]
execute store result storage worldtool:storage Processes[0].AffectedArea.To[0] double 1 run scoreboard players get #pos2xt worldtool
execute store result storage worldtool:storage Processes[0].AffectedArea.To[1] double 1 run scoreboard players get #pos2yt worldtool
execute store result storage worldtool:storage Processes[0].AffectedArea.To[2] double 1 run scoreboard players get #pos2zt worldtool

function worldtool:technical/save_load/backup/load

execute if entity @s[tag=wt.clone.move] run data modify storage worldtool:storage Temp.AdditionalTags set value ["wt.dont_reopen_menu","wt.no_message"]
execute if entity @s[tag=wt.clone.move] run function worldtool:ui_general/fill/setup_process

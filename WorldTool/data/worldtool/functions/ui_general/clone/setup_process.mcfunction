# Called by worldtool:process_start/common/setup_process
# Sets up the clone process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.clone\\"","storage":"worldtool:storage"}',ID:"worldtool:clone",Tags:["wt.process.clone","wt.from_bottom","wt.message.clone","wt.message.non_default"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:clone"}].Value

execute if entity @s[tag=wt.clone.move] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.move"

execute if entity @s[tag=!wt.clone.rotate] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.normal"
execute if entity @s[tag=wt.clone.rotate] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.rotate"

execute if entity @s[tag=wt.two_block_query.normal] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.filter.normal"
execute if entity @s[tag=wt.two_block_query.exclude] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.filter.exclude"

execute if entity @s[tag=wt.clone.mirror.x] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.mirror.x"
execute if entity @s[tag=wt.clone.mirror.y] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.mirror.y"
execute if entity @s[tag=wt.clone.mirror.z] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.mirror.z"

execute store result storage worldtool:storage Processes[0].Rotation.X int 1 run scoreboard players get @s wt.rotX
execute store result storage worldtool:storage Processes[0].Rotation.Y int 1 run scoreboard players get @s wt.rotY
execute store result storage worldtool:storage Processes[0].Rotation.Z int 1 run scoreboard players get @s wt.rotZ

function worldtool:process_start/common/set_process_values

data modify storage worldtool:storage Processes[0].AffectedArea.From set from storage worldtool:storage Processes[0].Positions.CloneDestination

scoreboard players operation #tempRotX worldtool = @s wt.rotX
scoreboard players operation #tempRotY worldtool = @s wt.rotY
scoreboard players operation #tempRotZ worldtool = @s wt.rotZ

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

execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[0].Positions.CloneDestination[0]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[0].Positions.CloneDestination[1]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Processes[0].Positions.CloneDestination[2]

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

tag @s remove wt.setup.clone

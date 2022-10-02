# Called by worldtool:use_shapes/setup_process
# Sets up the sphere process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.shape.sphere\\"","storage":"worldtool:storage"}',ID:"worldtool:sphere",Tags:["wt.process.sphere"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:sphere"}].Value

function worldtool:use_shapes/setup_process/set_process_values

execute store result score #radius worldtool run data get storage worldtool:storage Processes[0].Input.ShapeSettings.Diameter
scoreboard players operation #radius worldtool /= #2 worldtool

execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[0].Positions.1[0]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[0].Positions.1[1]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Processes[0].Positions.1[2]

scoreboard players operation #pos2xt worldtool = #pos1xt worldtool
scoreboard players operation #pos2yt worldtool = #pos1yt worldtool
scoreboard players operation #pos2zt worldtool = #pos1zt worldtool

scoreboard players operation #pos1xt worldtool += #radius worldtool
scoreboard players operation #pos1yt worldtool += #radius worldtool
scoreboard players operation #pos1zt worldtool += #radius worldtool

scoreboard players operation #pos2xt worldtool -= #radius worldtool
scoreboard players operation #pos2yt worldtool -= #radius worldtool
scoreboard players operation #pos2zt worldtool -= #radius worldtool

data modify storage worldtool:storage Processes[0].AffectedArea.From set value [0d,0d,0d]
execute store result storage worldtool:storage Processes[0].AffectedArea.From[0] double 1 run scoreboard players get #pos1xt worldtool
execute store result storage worldtool:storage Processes[0].AffectedArea.From[1] double 1 run scoreboard players get #pos1yt worldtool
execute store result storage worldtool:storage Processes[0].AffectedArea.From[2] double 1 run scoreboard players get #pos1zt worldtool

data modify storage worldtool:storage Processes[0].AffectedArea.To set value [0d,0d,0d]
execute store result storage worldtool:storage Processes[0].AffectedArea.To[0] double 1 run scoreboard players get #pos2xt worldtool
execute store result storage worldtool:storage Processes[0].AffectedArea.To[1] double 1 run scoreboard players get #pos2yt worldtool
execute store result storage worldtool:storage Processes[0].AffectedArea.To[2] double 1 run scoreboard players get #pos2zt worldtool

execute store result score #temp worldtool run data get storage worldtool:storage Processes[0].Input.ShapeSettings.Diameter
scoreboard players operation #temp worldtool /= #2 worldtool
scoreboard players operation #temp worldtool *= #temp worldtool
scoreboard players operation #temp worldtool *= #temp worldtool
scoreboard players operation #temp worldtool *= #pi worldtool
scoreboard players operation #temp worldtool /= #10000 worldtool
scoreboard players operation #temp worldtool *= #4 worldtool
scoreboard players operation #temp worldtool /= #3 worldtool
execute store result storage worldtool:storage Processes[0].Volume int 1 run scoreboard players get #temp worldtool

# Called by worldtool:process_start/shapes/setup_process
# Sets up the cone process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.shape.cone\\"","storage":"worldtool:storage"}',ID:"worldtool:cone",Tags:[]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:cone"}].Value

execute unless data storage worldtool:storage Temp{ProcessOrientation:"up"} unless data storage worldtool:storage Temp{ProcessOrientation:"down"} run data modify storage worldtool:storage Processes[0].Tags prepend value "wt.process.cone.horizontal"
data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[0]
execute unless data storage worldtool:storage Temp.Process{Tags:["wt.process.cone.horizontal"]} run data modify storage worldtool:storage Processes[0].Tags prepend value "wt.process.cone.vertical"

function worldtool:process_start/shapes/setup_process/set_process_values

function worldtool:process_start/shapes/get_corners/load

execute store result score #length_temp worldtool run data get storage worldtool:storage Processes[0].Input.ShapeSettings.Length
execute store result score #temp worldtool run data get storage worldtool:storage Processes[0].Input.ShapeSettings.Diameter
scoreboard players operation #temp worldtool /= #2 worldtool
scoreboard players operation #temp worldtool *= #temp worldtool
scoreboard players operation #temp worldtool *= #pi worldtool
scoreboard players operation #temp worldtool /= #10000 worldtool
scoreboard players operation #temp worldtool *= #length_temp worldtool
scoreboard players operation #temp worldtool /= #3 worldtool
execute store result storage worldtool:storage Processes[0].Volume int 1 run scoreboard players get #temp worldtool

# Called by worldtool:process_start/shapes/setup_process
# Sets up the cylinder process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.shape.cylinder\\"","storage":"worldtool:storage"}',ID:"worldtool:cylinder",Tags:[]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:cylinder"}].Value

execute unless data storage worldtool:storage Temp{ProcessOrientation:"up"} unless data storage worldtool:storage Temp{ProcessOrientation:"down"} run data modify storage worldtool:storage Processes[0].Tags prepend value "wt.process.cylinder.horizontal"
data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[0]
execute unless data storage worldtool:storage Temp.Process{Tags:["wt.process.cylinder.horizontal"]} run data modify storage worldtool:storage Processes[0].Tags prepend value "wt.process.cylinder.vertical"

function worldtool:process_start/shapes/setup_process/set_process_values

function worldtool:process_start/shapes/get_corners/load

execute store result score #length_temp worldtool run data get storage worldtool:storage Processes[0].Input.ShapeSettings.Length
execute store result score #temp worldtool run data get storage worldtool:storage Processes[0].Input.ShapeSettings.Diameter
scoreboard players operation #temp worldtool /= #2 worldtool
scoreboard players operation #temp worldtool *= #temp worldtool
scoreboard players operation #temp worldtool *= #pi worldtool
scoreboard players operation #temp worldtool /= #10000 worldtool
scoreboard players operation #temp worldtool *= #length_temp worldtool
execute store result storage worldtool:storage Processes[0].Volume int 1 run scoreboard players get #temp worldtool

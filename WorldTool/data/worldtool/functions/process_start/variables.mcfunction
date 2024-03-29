# Called by worldtool:process_start/start
# Starts a process, setting variables

scoreboard players operation #ID_temp worldtool = @s wt.ID

scoreboard players set $processRunning worldtool 1

scoreboard players set #processEntityNotFound worldtool 0

## Common variables ##

scoreboard players set #totalBlocksChecked worldtool 0
scoreboard players set #blocksChecked worldtool 0
scoreboard players set #blocksPlaced worldtool 0

scoreboard players set #processState worldtool 0

execute store result score #blocksPerTick worldtool run data get storage worldtool:storage Processes[-1].BlocksPerTick
execute unless score #blocksPerTick worldtool matches 2.. run scoreboard players set #blocksPerTick worldtool 2147483647


## Process-specific variables ##
data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]

execute store success score #temp worldtool if data storage worldtool:storage Temp.Process{LogStart:1b}
execute if score #temp worldtool matches 1 run data modify storage worldtool:storage Temp.LogEntry set value {Type:"info"}
execute if score #temp worldtool matches 1 store result score #temp2 worldtool run data get storage worldtool:storage Temp.Process.DisplayName
execute if score #temp worldtool matches 1 if score #temp2 worldtool matches 4.. run data modify storage worldtool:storage Temp.LogEntry.Message set from storage worldtool:storage Temp.Process.DisplayName
execute if score #temp worldtool matches 1 if score #temp2 worldtool matches 0..3 run data modify storage worldtool:storage Temp.LogEntry.Message set value '{"nbt":"Translation.\\"process.unnamed\\"","storage":"worldtool:storage"}'
execute if score #temp worldtool matches 1 run function worldtool:technical/cmd/log/add

scoreboard players set #minX worldtool 2147483647
scoreboard players set #maxX worldtool -2147483648
scoreboard players set #minY worldtool 2147483647
scoreboard players set #maxY worldtool -2147483648
scoreboard players set #minZ worldtool 2147483647
scoreboard players set #maxZ worldtool -2147483648

scoreboard players set #block1Placed worldtool 0
scoreboard players set #block2Placed worldtool 0

execute store result score #templatesToLoad worldtool if data storage worldtool:storage Processes[-1].Input.AreaList[].TemplateList[]
execute store result score #placeBlock worldtool if data storage worldtool:storage Temp.Process{Tags:["wt.start_with_block"]}

execute store result score #plantRate worldtool run data get storage worldtool:storage Processes[-1].Input.Rate
execute if score #plantRate worldtool matches ..-1 run scoreboard players set #plantRate worldtool 0
scoreboard players remove #plantRate worldtool 1

execute store result score #tileDropsEnabled worldtool run gamerule doTileDrops

execute store result score #rotationX worldtool run data get storage worldtool:storage Processes[-1].Input.Rotation.X
execute store result score #rotationY worldtool run data get storage worldtool:storage Processes[-1].Input.Rotation.Y
execute store result score #rotationZ worldtool run data get storage worldtool:storage Processes[-1].Input.Rotation.Z

execute if data storage worldtool:storage Temp.Process{ID:"worldtool:shell"} run function worldtool:process_start/general/setup_process/shell/variables
execute if data storage worldtool:storage Temp.Process{ID:"worldtool:outline"} run function worldtool:process_start/general/setup_process/outline/variables
execute if data storage worldtool:storage Temp.Process{ID:"worldtool:repeat"} run function worldtool:process_start/general/setup_process/repeat/variables
execute if data storage worldtool:storage Temp.Process{ID:"worldtool:smooth_calculate"} run function worldtool:process_start/general/setup_process/smooth/calculation_variables
execute if data storage worldtool:storage Temp.Process{ID:"worldtool:randomize"} as @e[type=minecraft:marker,tag=worldtool,tag=wt.randomization_source] run function worldtool:process_start/general/setup_process/randomize/variables

execute if data storage worldtool:storage Temp.Process{Tags:["wt.process.cylinder.vertical"]} as 35c1ab68-9d4c-11eb-a8b3-0242ac130003 run function worldtool:process_start/shapes/init/cylinder_vertical
execute if data storage worldtool:storage Temp.Process{Tags:["wt.process.cylinder.horizontal"]} as 35c1ab68-9d4c-11eb-a8b3-0242ac130003 run function worldtool:process_start/shapes/init/cylinder_horizontal
execute if data storage worldtool:storage Temp.Process{Tags:["wt.process.cone.vertical"]} as 35c1ab68-9d4c-11eb-a8b3-0242ac130003 run function worldtool:process_start/shapes/init/cone_vertical
execute if data storage worldtool:storage Temp.Process{Tags:["wt.process.cone.horizontal"]} as 35c1ab68-9d4c-11eb-a8b3-0242ac130003 run function worldtool:process_start/shapes/init/cone_horizontal
execute if data storage worldtool:storage Temp.Process{ID:"worldtool:sphere"} as 35c1ab68-9d4c-11eb-a8b3-0242ac130003 run function worldtool:process_start/shapes/init/sphere
execute if data storage worldtool:storage Temp.Process{ID:"worldtool:2d_fill"} run function worldtool:process_start/shapes/init/2d_fill

function #worldtool:hooks/process_start/variables

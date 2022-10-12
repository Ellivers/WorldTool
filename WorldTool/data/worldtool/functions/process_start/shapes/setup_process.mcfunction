# Called by worldtool:process_start/shapes/load
# Sets up the shape processes

scoreboard players set #success worldtool 0

execute if predicate worldtool:shape_tool/shapes/cylinder run function worldtool:process_start/shapes/setup_process/cylinder
execute if predicate worldtool:shape_tool/shapes/cone run function worldtool:process_start/shapes/setup_process/cone
execute if predicate worldtool:shape_tool/shapes/sphere run function worldtool:process_start/shapes/setup_process/sphere

function #worldtool:addon/use_shapes/processes

execute if score #success worldtool matches 1 run data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[0]
execute if score #success worldtool matches 1 if score $enableBackups worldtool matches 1 if score $playerdbAvailable worldtool matches 1 run function worldtool:technical/save_load/backup/setup_process

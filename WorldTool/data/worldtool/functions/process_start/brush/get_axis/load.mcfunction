# Called by worldtool:process_start/brush/area/flat/load and worldtool:process_start/brush/start/shapes/circle
# Gets the axis to use for flat areas

scoreboard players set #temp.X worldtool 0
scoreboard players set #temp.Y worldtool 0
scoreboard players set #temp.Z worldtool 0

execute if predicate worldtool:brush_tool/settings/axis/x run scoreboard players set #temp.X worldtool 1
execute if predicate worldtool:brush_tool/settings/axis/y run scoreboard players set #temp.Y worldtool 1
execute if predicate worldtool:brush_tool/settings/axis/z run scoreboard players set #temp.Z worldtool 1

execute if predicate worldtool:brush_tool/settings/axis/auto run function worldtool:process_start/brush/get_axis/auto

# Called by worldtool:use_brush/area/load

scoreboard players set #temp3 worldtool 1

scoreboard players reset #temp.X worldtool
scoreboard players reset #temp.Y worldtool
scoreboard players reset #temp.Z worldtool

execute if predicate worldtool:brush_tool/settings/axis/x run scoreboard players set #temp.X worldtool 1
execute if predicate worldtool:brush_tool/settings/axis/y run scoreboard players set #temp.Y worldtool 1
execute if predicate worldtool:brush_tool/settings/axis/z run scoreboard players set #temp.Z worldtool 1

execute if predicate worldtool:brush_tool/settings/axis/auto run function worldtool:use_brush/area/flat/get_axis/load

execute if score @s wt.brush_size matches 2.. run function worldtool:use_brush/area/normal/expand

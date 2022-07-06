# Called by worldtool:use_brush/area/flat/load and worldtool:use_brush/start/shapes/circle

scoreboard players set #temp.X worldtool 0
scoreboard players set #temp.Y worldtool 0
scoreboard players set #temp.Z worldtool 0

execute if predicate worldtool:brush_tool/settings/axis/x run scoreboard players set #temp.X worldtool 1
execute if predicate worldtool:brush_tool/settings/axis/y run scoreboard players set #temp.Y worldtool 1
execute if predicate worldtool:brush_tool/settings/axis/z run scoreboard players set #temp.Z worldtool 1

execute if predicate worldtool:brush_tool/settings/axis/auto run function worldtool:use_brush/get_axis/auto

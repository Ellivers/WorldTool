# Called by worldtool:use_brush/area/load

scoreboard players set #temp3 worldtool 1

function worldtool:use_brush/get_axis/load

execute if score @s wt.brush_size matches 2.. run function worldtool:use_brush/area/flat/expand

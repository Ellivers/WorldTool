# Called recursively and by worldtool:use_brush/area/flat/load
# Selects the area of the selected brush size and axis

scoreboard players add #temp3 worldtool 2

execute unless score #temp.X worldtool matches 1 run scoreboard players remove #offset1x worldtool 1
execute unless score #temp.Y worldtool matches 1 run scoreboard players remove #offset1y worldtool 1
execute unless score #temp.Z worldtool matches 1 run scoreboard players remove #offset1z worldtool 1
execute unless score #temp.X worldtool matches 1 run scoreboard players add #offset2x worldtool 1
execute unless score #temp.Y worldtool matches 1 run scoreboard players add #offset2y worldtool 1
execute unless score #temp.Z worldtool matches 1 run scoreboard players add #offset2z worldtool 1

execute if score #temp3 worldtool < @s wt.brush_size run function worldtool:use_brush/area/normal/expand

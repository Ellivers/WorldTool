# Called recursively and by worldtool:use_brush/area/flat/load
# Selects the area of the selected brush size and axis

scoreboard players add #temp3 worldtool 2

execute unless score #temp_X worldtool matches 1 run scoreboard players remove #pos1xt worldtool 1
execute unless score #temp_Y worldtool matches 1 run scoreboard players remove #pos1yt worldtool 1
execute unless score #temp_Z worldtool matches 1 run scoreboard players remove #pos1zt worldtool 1
execute unless score #temp_X worldtool matches 1 run scoreboard players add #pos2xt worldtool 1
execute unless score #temp_Y worldtool matches 1 run scoreboard players add #pos2yt worldtool 1
execute unless score #temp_Z worldtool matches 1 run scoreboard players add #pos2zt worldtool 1

execute if score #temp3 worldtool < @s wt.brush_size run function worldtool:use_brush/area/normal/expand

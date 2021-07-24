# Called recursively and by worldtool:use_brush/area/normal/load
# Selects the area of the selected brush size

scoreboard players add #temp3 worldtool 2
scoreboard players remove #pos1xt worldtool 1
scoreboard players remove #pos1yt worldtool 1
scoreboard players remove #pos1zt worldtool 1
scoreboard players add #pos2xt worldtool 1
scoreboard players add #pos2yt worldtool 1
scoreboard players add #pos2zt worldtool 1

execute if score #temp3 worldtool < @s wt.brush_size run function worldtool:use_brush/area/normal/expand

# Called by worldtool:use_brush/area/load

scoreboard players set #temp3 worldtool 1
scoreboard players set #pos1xt worldtool 1
scoreboard players set #pos1yt worldtool 1
scoreboard players set #pos1zt worldtool 1
scoreboard players set #pos2xt worldtool 1
scoreboard players set #pos2yt worldtool 1
scoreboard players set #pos2zt worldtool 1
execute if score @s wt.brush_size matches 2.. run function worldtool:use_brush/area/normal/expand

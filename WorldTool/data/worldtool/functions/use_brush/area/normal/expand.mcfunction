# Called recursively and by worldtool:use_brush/area/normal/load
# Selects the area of the selected brush size

scoreboard players add #temp3 worldtool 2
scoreboard players remove #offset1x worldtool 1
scoreboard players remove #offset1y worldtool 1
scoreboard players remove #offset1z worldtool 1
scoreboard players add #offset2x worldtool 1
scoreboard players add #offset2y worldtool 1
scoreboard players add #offset2z worldtool 1

execute if score #temp3 worldtool < #brushSize_temp worldtool run function worldtool:use_brush/area/normal/expand

# Called recursively and by worldtool:particles/paste_preview/pos1/load
# Moves one block in the positive X direction

particle minecraft:dust 0.027 0.753 0.753 1.5 ~ ~ ~ 0 -1 0 2 0 force @s
scoreboard players add #particlePosX worldtool 1
execute if score #particlePosX worldtool <= #pos2xt worldtool positioned ~1 ~ ~ run function worldtool:particles/paste_preview/pos1/x

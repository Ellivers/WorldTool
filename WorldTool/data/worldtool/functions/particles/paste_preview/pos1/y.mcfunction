# Called recursively and by worldtool:particles/paste_preview/pos1/load
# Moves one block in the positive Y direction

particle minecraft:dust 0.027 0.753 0.753 1.5 ~ ~ ~ 0 -1 0 2 0 force @s
scoreboard players add #particlePosY worldtool 1
execute if score #particlePosY worldtool <= #pos2yt worldtool positioned ~ ~1 ~ run function worldtool:particles/paste_preview/pos1/y

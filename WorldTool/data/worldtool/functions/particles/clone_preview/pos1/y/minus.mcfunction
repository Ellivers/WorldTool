# Called recursively and by worldtool:particles/clone_preview/pos1/load
# Moves one block in the negative Y direction

particle minecraft:dust 0.024 0.808 0.639 1.5 ~ ~ ~ 0 -1 0 2 0 force @s
scoreboard players remove #particlePosY worldtool 1
execute if score #particlePosY worldtool >= #pos2yt worldtool positioned ~ ~-1 ~ run function worldtool:particles/clone_preview/pos1/y/minus

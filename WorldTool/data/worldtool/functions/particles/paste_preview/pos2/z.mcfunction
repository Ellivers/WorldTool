# Called recursively and by worldtool:particles/paste_preview/pos2/load
# Moves one block in the negative Z direction

particle minecraft:dust 0.027 0.753 0.753 1.5 ~ ~ ~ 0 -1 0 2 0 force @s
scoreboard players remove #particlePosZ worldtool 1
execute if score #particlePosZ worldtool >= #pos2zt worldtool positioned ~ ~ ~-1 run function worldtool:particles/paste_preview/pos2/z

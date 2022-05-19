# Called recursively and by worldtool:particles/clone_preview/pos1/load
# Moves one block in the positive Z direction

particle minecraft:dust 0.024 0.808 0.639 1.5 ~ ~ ~ 0 -1 0 2 0 force @s
scoreboard players add #particlePosZ worldtool 1
execute if score #particlePosZ worldtool <= #pos2zt worldtool positioned ~ ~ ~1 run function worldtool:particles/clone_preview/pos1/z/plus

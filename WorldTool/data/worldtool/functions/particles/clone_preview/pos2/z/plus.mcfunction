# Called recursively and by worldtool:particles/clone_preview/pos2/load
# Moves one block in the positive Z direction

particle minecraft:dust 0.15294117647058825 0.807843137254902 0.023529411764705882 1.5 ~ ~ ~ 0 -1 0 2 0 force @s
scoreboard players add #particlePosZ worldtool 1
execute if score #particlePosZ worldtool <= #pos1zt worldtool positioned ~ ~ ~1 run function worldtool:particles/clone_preview/pos2/z/plus

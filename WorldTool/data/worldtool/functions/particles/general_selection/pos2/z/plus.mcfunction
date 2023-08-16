# Called recursively and by worldtool:particles/general_selection/pos2/load
# Moves one block in the positive Z direction

particle minecraft:dust 1 0.3686274509803922 0 1.5 ~ ~ ~ 0 -1 0 2 0 force @s
scoreboard players add #particlePosZ worldtool 1
execute if score #particlePosZ worldtool <= #pos2zt worldtool if score #particlePosZ worldtool <= $outlineLengthLimit worldtool positioned ~ ~ ~1 run function worldtool:particles/general_selection/pos2/z/plus

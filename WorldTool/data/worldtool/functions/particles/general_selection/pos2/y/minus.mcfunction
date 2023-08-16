# Called recursively and by worldtool:particles/general_selection/pos2/load
# Moves one block in the negative Y direction

particle minecraft:dust 1 0.3686274509803922 0 1.5 ~ ~ ~ 0 -1 0 2 0 force @s
scoreboard players remove #particlePosY worldtool 1
execute if score #particlePosY worldtool >= #pos2yt worldtool if score #particlePosY worldtool >= $outlineLengthLimitNegative worldtool positioned ~ ~-1 ~ run function worldtool:particles/general_selection/pos2/y/minus

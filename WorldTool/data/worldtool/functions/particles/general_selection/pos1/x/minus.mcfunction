# Called recursively and by worldtool:particles/general_selection/pos1/load
# Moves one block in the negative X direction

particle minecraft:dust 0 0.3176470588235294 1 1.5 ~ ~ ~ 0 -1 0 2 0 force @s
scoreboard players remove #particlePosX worldtool 1
execute if score #particlePosX worldtool >= #pos2xt worldtool if score #particlePosX worldtool >= $outlineLengthLimitNegative worldtool positioned ~-1 ~ ~ run function worldtool:particles/general_selection/pos1/x/minus

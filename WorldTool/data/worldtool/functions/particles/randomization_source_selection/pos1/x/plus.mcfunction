# Called recursively and by worldtool:particles/randomization_source_selection/pos1/load
# Moves one block in the positive X direction

particle minecraft:dust 0.918 0.965 0.078 1.5 ~ ~ ~ 0 -1 0 2 0 force @s
scoreboard players add #particlePosX worldtool 1
execute if score #particlePosX worldtool <= #pos2xt worldtool positioned ~1 ~ ~ run function worldtool:particles/randomization_source_selection/pos1/x/plus

# Called recursively and by worldtool:particles/clone_preview/pos2/load
# Moves one block in the positive X direction

particle minecraft:dust 0.15294117647058825 0.807843137254902 0.023529411764705882 1.5 ~ ~ ~ 0 -1 0 2 0 force @s
scoreboard players add #particlePosX worldtool 1
execute if score #particlePosX worldtool <= #pos1xt worldtool positioned ~1 ~ ~ run function worldtool:particles/clone_preview/pos2/x/plus

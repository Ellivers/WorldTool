particle minecraft:dust 0.15294117647058825 0.807843137254902 0.023529411764705882 1.5 ~ ~ ~ 0 -1 0 2 0 force
scoreboard players remove @s rotX 1
execute unless score @s rotX < @s pos2x positioned ~-1 ~ ~ run function worldtool:particles/clone_preview/pos1/x/minus
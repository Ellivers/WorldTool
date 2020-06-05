particle minecraft:dust 0 0.3176470588235294 1 1.5 ~ ~ ~ 0 -1 0 2 0 force
scoreboard players add @s rotY 1
execute unless score @s rotY > @s pos2y positioned ~ ~1 ~ run function worldtool:particles/mark_selection/pos1/y/plus
#execute if score @s rotY > @s pos2y run function worldtool:particles/mark_selection/pos1/load_xz
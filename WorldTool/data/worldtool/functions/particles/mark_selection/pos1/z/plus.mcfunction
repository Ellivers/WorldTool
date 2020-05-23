particle minecraft:dust 0 0.3176470588235294 1 1.5 ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s rotZ 1
execute unless score @s rotZ > @s pos2z positioned ~ ~ ~1 run function worldtool:particles/mark_selection/pos1/z/plus
particle minecraft:dust 1 0.3686274509803922 0 1.5 ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s rotX 1
execute unless score @s rotX > @s pos2x positioned ~1 ~ ~ run function worldtool:particles/mark_selection/pos2/x/plus
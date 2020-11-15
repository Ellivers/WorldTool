particle minecraft:dust 0.15294117647058825 0.807843137254902 0.023529411764705882 1.5 ~ ~ ~ 0 -1 0 2 0 force
scoreboard players add @s wt_rotZ 1
execute unless score @s wt_rotZ > @s wt_pos2z positioned ~ ~ ~1 run function worldtool:particles/clone_preview/pos1/z/plus
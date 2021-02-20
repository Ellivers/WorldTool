particle minecraft:dust 0 0.3176470588235294 1 1.5 ~ ~ ~ 0 -1 0 2 0 force @a[tag=wt_particle_user]
scoreboard players remove @s wt_rotX 1
execute unless score @s wt_rotX < @s wt_pos2x positioned ~-1 ~ ~ run function worldtool:particles/mark_selection/pos1/x/minus
particle minecraft:dust 0 0.3176470588235294 1 1.5 ~ ~ ~ 0 -1 0 2 0 force @a[tag=wt_particle_user]
scoreboard players add @s wt_rotZ 1
execute unless score @s wt_rotZ > @s wt_pos2z positioned ~ ~ ~1 run function worldtool:particles/mark_selection/pos1/z/plus
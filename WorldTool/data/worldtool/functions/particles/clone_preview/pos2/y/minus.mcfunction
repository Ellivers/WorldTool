particle minecraft:dust 0.15294117647058825 0.807843137254902 0.023529411764705882 1.5 ~ ~ ~ 0 -1 0 2 0 force @a[tag=wt_particle_user]
scoreboard players remove @s wt_rotY 1
execute unless score @s wt_rotY < @s wt_pos2y positioned ~ ~-1 ~ run function worldtool:particles/clone_preview/pos2/y/minus
#execute if score @s wt_rotY < @s wt_pos2y run function worldtool:particles/mark_selection/pos2/load_xz
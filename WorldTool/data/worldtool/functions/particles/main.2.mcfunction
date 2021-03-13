scoreboard players operation #ID_temp worldtool = @s wt_ID
execute if entity @s[tag=!wt_shape_preview] as @a[tag=in_menu] if score @s wt_ID = #ID_temp worldtool run tag @s add wt_particle_user
execute if entity @s[tag=wt_shape_preview] as @a if score @s wt_ID = #ID_temp worldtool run tag @s add wt_particle_user

execute if entity @s[tag=show_rot] if entity @a[tag=wt_particle_user] positioned ~ ~1.8 ~ run particle minecraft:dust 0 0 1 1 ^ ^ ^0.6 0 0 0 1 2 force @a[tag=wt_particle_user]
execute unless entity @s[tag=!pos1,tag=!pos2] if entity @a[tag=wt_particle_user] run function worldtool:particles/mark_selection/load
execute unless entity @s[tag=!wt_clone_preview_pos1,tag=!wt_clone_preview_pos2] at @a[tag=in_menu] if entity @a[tag=wt_particle_user] at @s run function worldtool:particles/clone_preview/load

execute if entity @s[tag=wt_circle_preview] if entity @a[tag=wt_particle_user] align xyz positioned ~.5 ~.5 ~.5 run function worldtool:particles/circle_preview/raycast
execute if entity @s[tag=wt_cylinder_preview] if entity @a[tag=wt_particle_user] align xyz positioned ~.5 ~.5 ~.5 run function worldtool:particles/cylinder_preview/ray_start
execute if entity @s[tag=wt_sphere_preview] if entity @a[tag=wt_particle_user] align xyz positioned ~.5 ~.5 ~.5 run function worldtool:particles/sphere_preview/ray_start
execute if entity @s[tag=wt_cone_preview] if entity @a[tag=wt_particle_user] align xyz positioned ~.5 ~.5 ~.5 run function worldtool:particles/cone_preview/ray_start

tag @a[tag=wt_particle_user] remove wt_particle_user

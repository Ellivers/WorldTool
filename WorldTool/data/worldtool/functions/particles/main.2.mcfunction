execute if entity @s[tag=show_rot] positioned ~ ~1.8 ~ run particle minecraft:dust 0 0 1 1 ^ ^ ^0.6 0 0 0 1 2 force
execute unless entity @s[tag=!pos1,tag=!pos2] at @a[tag=in_menu] if score @p wt_ID = @s wt_ID at @s run function worldtool:particles/mark_selection/load
execute unless entity @s[tag=!wt_clone_preview_pos1,tag=!wt_clone_preview_pos2] if score @p wt_ID = @s wt_ID at @s run function worldtool:particles/clone_preview/load
execute if entity @s[tag=wt_circle_preview] align xyz positioned ~.5 ~.5 ~.5 run function worldtool:particles/circle_preview/raycast
execute if entity @s[tag=wt_cylinder_preview] align xyz positioned ~.5 ~.5 ~.5 run function worldtool:particles/cylinder_preview/ray_start
execute if entity @s[tag=wt_sphere_preview] align xyz positioned ~.5 ~.5 ~.5 run function worldtool:particles/sphere_preview/ray_start
execute if entity @s[tag=wt_cone_preview] align xyz positioned ~.5 ~.5 ~.5 run function worldtool:particles/cone_preview/ray_start

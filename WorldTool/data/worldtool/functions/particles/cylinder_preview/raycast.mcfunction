# Called by worldtool:particles/main.2

# Particles along a certain axis depending on the shape's axis
execute unless entity @s[tag=!up,tag=!down] run particle minecraft:dust 0.671 0.161 0.875 1.5 ~ ~ ~ 0 .3 0 2 3 force @a[tag=wt_particle_user]
execute unless entity @s[tag=!north,tag=!south] run particle minecraft:dust 0.671 0.161 0.875 1.5 ~ ~ ~ 0 0 .3 2 3 force @a[tag=wt_particle_user]
execute unless entity @s[tag=!east,tag=!west] run particle minecraft:dust 0.671 0.161 0.875 1.5 ~ ~ ~ .3 0 0 2 3 force @a[tag=wt_particle_user]
# End the ray if it bumps into another previewing entity
execute if entity @s[tag=1] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=!1,tag=!5,tag=!6,tag=!7,tag=!8,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/cylinder_preview/raycast
execute if entity @s[tag=2] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=!2,tag=!5,tag=!6,tag=!7,tag=!8,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/cylinder_preview/raycast
execute if entity @s[tag=3] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=!3,tag=!5,tag=!6,tag=!7,tag=!8,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/cylinder_preview/raycast
execute if entity @s[tag=4] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=!4,tag=!5,tag=!6,tag=!7,tag=!8,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/cylinder_preview/raycast
execute if entity @s[tag=5] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=!5,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/cylinder_preview/raycast
execute if entity @s[tag=6] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=!6,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/cylinder_preview/raycast
execute if entity @s[tag=7] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=!7,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/cylinder_preview/raycast
execute if entity @s[tag=8] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=!8,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/cylinder_preview/raycast

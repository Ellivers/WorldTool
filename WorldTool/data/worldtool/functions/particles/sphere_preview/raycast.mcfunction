# Called by worldtool:particles/sphere_preview/ray_start and ray_start2

# Pahticles
particle minecraft:dust 0.671 0.161 0.875 1.5 ~ ~ ~ 0 0 0 2 1 force @a[tag=wt_particle_user]
# End the ray if it bumps into another previewing entity
execute if entity @s[tag=1] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=!1,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/sphere_preview/raycast
execute if entity @s[tag=2] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=!2,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/sphere_preview/raycast
execute if entity @s[tag=3] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=!3,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/sphere_preview/raycast
execute if entity @s[tag=4] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=!4,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/sphere_preview/raycast
execute if entity @s[tag=5] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=!5,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/sphere_preview/raycast
execute if entity @s[tag=6] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=!6,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/sphere_preview/raycast

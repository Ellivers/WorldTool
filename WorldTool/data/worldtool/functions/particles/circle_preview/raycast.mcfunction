# Called by worldtool:particles/main.2

# Particles along a certain axis depending on the shape's axis
execute if entity @s[tag=up] run particle minecraft:dust 0.671 0.161 0.875 1.5 ~ ~ ~ 0 .3 0 2 3 force @a[tag=wt_particle_user]
execute if entity @s[tag=north] run particle minecraft:dust 0.671 0.161 0.875 1.5 ~ ~ ~ 0 0 .3 2 3 force @a[tag=wt_particle_user]
execute if entity @s[tag=east] run particle minecraft:dust 0.671 0.161 0.875 1.5 ~ ~ ~ .3 0 0 2 3 force @a[tag=wt_particle_user]
# End the ray if it bumps into another previewing entity
execute if entity @s[tag=1] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_circle_preview,tag=!1,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/circle_preview/raycast
execute if entity @s[tag=2] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_circle_preview,tag=!2,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/circle_preview/raycast
execute if entity @s[tag=3] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_circle_preview,tag=!3,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/circle_preview/raycast
execute if entity @s[tag=4] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_circle_preview,tag=!4,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/circle_preview/raycast

particle minecraft:dust 0.671 0.161 0.875 1.5 ~ ~ ~ 0 0 0 2 1 force
# End the ray if it bumps into any other previewing entity
execute if entity @s[tag=up] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=!1,tag=!2,tag=!3,tag=!4,distance=...8] positioned ~ ~1 ~ run function worldtool:particles/cylinder_preview/raycast2
execute if entity @s[tag=down] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=!1,tag=!2,tag=!3,tag=!4,distance=...8] positioned ~ ~-1 ~ run function worldtool:particles/cylinder_preview/raycast2
execute if entity @s[tag=north] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=!1,tag=!2,tag=!3,tag=!4,distance=...8] positioned ~ ~ ~-1 run function worldtool:particles/cylinder_preview/raycast2
execute if entity @s[tag=south] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=!1,tag=!2,tag=!3,tag=!4,distance=...8] positioned ~ ~ ~1 run function worldtool:particles/cylinder_preview/raycast2
execute if entity @s[tag=east] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=!1,tag=!2,tag=!3,tag=!4,distance=...8] positioned ~1 ~ ~ run function worldtool:particles/cylinder_preview/raycast2
execute if entity @s[tag=west] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=!1,tag=!2,tag=!3,tag=!4,distance=...8] positioned ~-1 ~ ~ run function worldtool:particles/cylinder_preview/raycast2

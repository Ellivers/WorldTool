# Called by worldtool:particles/main.2

# Particles along a certain axis depending on the shape's axis
execute unless entity @s[tag=!up,tag=!down] run particle minecraft:dust 0.671 0.161 0.875 1.5 ~ ~ ~ 0 .3 0 2 3 force
execute unless entity @s[tag=!north,tag=!south] run particle minecraft:dust 0.671 0.161 0.875 1.5 ~ ~ ~ 0 0 .3 2 3 force
execute unless entity @s[tag=!east,tag=!west] run particle minecraft:dust 0.671 0.161 0.875 1.5 ~ ~ ~ .3 0 0 2 3 force
# End the ray if it bumps into another previewing entity
execute if entity @s[tag=1] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cone_preview,tag=!1,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/cone_preview/raycast
execute if entity @s[tag=2] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cone_preview,tag=!2,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/cone_preview/raycast
execute if entity @s[tag=3] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cone_preview,tag=!3,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/cone_preview/raycast
execute if entity @s[tag=4] unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cone_preview,tag=!4,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/cone_preview/raycast

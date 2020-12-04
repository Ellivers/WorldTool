# Called by worldtool:particles/cone_preview/ray_start2

# Pahticles
particle minecraft:dust 0.671 0.161 0.875 1.5 ~ ~ ~ 0 0 0 2 1 force
# End the ray if it bumps into another previewing entity
execute unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cone_preview,tag=!5,distance=...8] positioned ^ ^ ^.5 run function worldtool:particles/cone_preview/raycast2

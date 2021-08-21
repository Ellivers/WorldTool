execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1] run function worldtool:ui/pos1_removetags
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1] remove sphere
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1] remove brush_cmd
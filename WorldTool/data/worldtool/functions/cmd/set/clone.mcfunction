execute as @e[type=minecraft:area_effect_cloud,tag=cmdpos1] run function worldtool:ui/pos1_removetags
tag @e[type=minecraft:area_effect_cloud,tag=cmdpos1] remove wt_destroy
tag @e[type=minecraft:area_effect_cloud,tag=cmdpos1] add cloning_wt
tag @e[type=minecraft:area_effect_cloud,tag=cmdpos1] remove sphere
tag @e[type=minecraft:area_effect_cloud,tag=cmdpos1] remove brush_cmd
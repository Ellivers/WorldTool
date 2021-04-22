execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1] run function worldtool:ui_general/pos1_removetags
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1] remove wt_destroy
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1] add wt_clone
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1] add rotated
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1] remove sphere
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1] remove brush_cmd
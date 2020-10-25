execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1] run function worldtool:cmd/selected/filter
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1] remove filtered_reversed
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1] add filtered
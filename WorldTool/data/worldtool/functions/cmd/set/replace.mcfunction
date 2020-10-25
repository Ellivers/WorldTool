execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1] run function worldtool:cmd/selected/replace
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1] add replacefill
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1] remove replacefill_reversed
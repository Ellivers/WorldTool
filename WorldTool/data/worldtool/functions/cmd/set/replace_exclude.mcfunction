execute as @e[type=minecraft:area_effect_cloud,tag=cmdpos1] run function worldtool:cmd/selected/replace
tag @e[type=minecraft:area_effect_cloud,tag=cmdpos1] remove replacefill
tag @e[type=minecraft:area_effect_cloud,tag=cmdpos1] add replacefill_reversed
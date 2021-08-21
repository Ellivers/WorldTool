execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos2] run tag @s add wt_struct_corn2
function worldtool:struct_corner_place/pos1
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos2] at @s run function worldtool:struct_corner_place/pos2

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1] run function worldtool:measure/load.pos1
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos2] run function worldtool:measure/load.pos2

scoreboard players set $widthX worldtool 1
scoreboard players set $heightY worldtool 1
scoreboard players set $lengthZ worldtool 1

function worldtool:measure/measure
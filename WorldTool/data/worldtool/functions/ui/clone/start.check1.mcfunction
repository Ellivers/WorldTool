tag @s add wt_measuring_area_clone
# This function measures how many blocks are in the area you selected
tag @s add nomeasuredonemessageplzthx
execute at @s as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:measure/load.pos1
execute at @s as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2] if score @s wt_ID = @p wt_ID run function worldtool:measure/load.pos2

scoreboard players set $widthX worldtool 1
scoreboard players set $heightY worldtool 1
scoreboard players set $lengthZ worldtool 1

function worldtool:measure/measure

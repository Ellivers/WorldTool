# This function measures how many blocks are in the area you selected as a random block source
tag @s add nomeasuredonemessageplzthx
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randomcorner1] if score @s wt_ID = #ID_temp worldtool run function worldtool:measure/load.pos1
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randomcorner2] if score @s wt_ID = #ID_temp worldtool run function worldtool:measure/load.pos2

scoreboard players set $widthX worldtool 1
scoreboard players set $heightY worldtool 1
scoreboard players set $lengthZ worldtool 1

function worldtool:measure/measure
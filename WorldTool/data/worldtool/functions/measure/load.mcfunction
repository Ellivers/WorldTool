scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos1
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos2

scoreboard players set #widthX worldtool 1
scoreboard players set #heightY worldtool 1
scoreboard players set #lengthZ worldtool 1

function worldtool:measure/measure

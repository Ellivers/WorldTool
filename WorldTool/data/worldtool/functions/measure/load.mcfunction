execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID run kill @s

execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:measure/load.pos1
execute as @e[type=minecraft:area_effect_cloud,tag=pos2] if score @s wt_ID = @p wt_ID run function worldtool:measure/load.pos2

scoreboard players set $widthX worldtool 1
scoreboard players set $heightY worldtool 1
scoreboard players set $lengthZ worldtool 1

function worldtool:measure/measure
function worldtool:ui/anti_feedback_chat_message/load
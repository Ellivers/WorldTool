tag @s remove in_menu
tag @s remove measure_filter
execute if block ~ ~ ~ minecraft:water run setblock 2 1 13 minecraft:water
execute unless block ~ ~ ~ minecraft:water run setblock 2 1 13 minecraft:air
execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID run kill @s
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID at @s run function worldtool:ui/measure/start.pos1
function worldtool:ui/anti_feedback_chat_message/load
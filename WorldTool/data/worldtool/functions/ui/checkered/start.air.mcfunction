tag @s remove checkered_select
execute unless block ~ ~ ~ minecraft:water run setblock 0 1 13 minecraft:air
execute if block ~ ~ ~ #worldtool:water run setblock 0 1 13 minecraft:water
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add checkered
execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p worldtool run kill @s
tag @s remove in_menu
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID at @s run function worldtool:load_fill
function worldtool:ui/anti_feedback_chat_message/load
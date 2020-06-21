tag @s remove in_menu
tag @s remove fun_menu
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add cmd_block_fill
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID at @s run function worldtool:load_function/load_fill
function worldtool:ui/anti_feedback_chat_message/load
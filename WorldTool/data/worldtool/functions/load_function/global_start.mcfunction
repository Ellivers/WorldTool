tag @s remove placing_fill
tag @s remove in_menu
function worldtool:ui/player_removetags

execute at @s as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run function worldtool:load_function/global_start.check_block

execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s[distance=..200] wt_ID = @p wt_ID at @s run function worldtool:load_function/load_fill

function worldtool:ui/anti_feedback_chat_message/load
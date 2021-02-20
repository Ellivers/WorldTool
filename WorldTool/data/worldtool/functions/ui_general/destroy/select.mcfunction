function worldtool:ui_general/summon_check_block/primary

tag @s remove placing_fill
tag @s add destroy_select

tag @s add wt_backbuttonplzthx
function worldtool:ui_general/clear_chat

scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run function worldtool:ui_general/destroy/select.pos1
function worldtool:ui_general/anti_feedback_chat_message/load
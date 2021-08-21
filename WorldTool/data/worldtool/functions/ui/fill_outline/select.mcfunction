function worldtool:ui/summon_check_block/primary

tag @s add wt_backbuttonplzthx
function worldtool:ui/clear_chat

tag @s remove placing_fill
tag @s add block_select_outline

scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run function worldtool:ui/fill_outline/select.pos1
function worldtool:ui/anti_feedback_chat_message/load
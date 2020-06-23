function worldtool:ui/summon_check_block/primary

tag @s add backbuttonplzthx
function worldtool:ui/clear_chat

tag @s remove placing_fill
tag @s add block_select_outline

execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/fill_outline/select.pos1
function worldtool:ui/anti_feedback_chat_message/load
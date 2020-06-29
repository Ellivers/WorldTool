execute as @e[type=minecraft:area_effect_cloud,tag=wt_check] if score @s wt_ID = @p wt_ID run kill @s
tag @s add grabbing_block
tag @s add grabbing_block_replace
function worldtool:ui/clear_chat
tellraw @s [{"text":"Select a block to pick  ","color":"aqua"},{"text":"[Cancel]","color":"red","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
function worldtool:ui/anti_feedback_chat_message/load
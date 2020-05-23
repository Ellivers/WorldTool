execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID run kill @s
tag @s add grabbing_block
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\nSelect a block to pick  ","color":"aqua"},{"text":"[Cancel]","color":"red","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
function worldtool:ui/anti_feedback_chat_message/load
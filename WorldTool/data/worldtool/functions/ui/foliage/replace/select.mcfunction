execute as @e[type=minecraft:area_effect_cloud,tag=wt_check] if score @s wt_ID = @p wt_ID at @s run function worldtool:ui/kill_check_block

tag @s remove placing_replace_foliage
tag @s remove placing_replace_foliage_reversed
function worldtool:ui/clear_chat
tellraw @s {"text": "[⬅Back]\n","color":"aqua","hoverEvent": {"action": "show_text","value": "Go back to the previous menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/foliage/select"}}

tellraw @s [{"text":"[Normal...]  ","color":"green","hoverEvent":{"action":"show_text","value":"Choose a block to replace"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/foliage/replace/select.normal"}},{"text":"[Exclude...]  ","color":"gold","hoverEvent":{"action":"show_text","value":"Choose a block to not replace"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/foliage/replace/select.reversed"}},{"text":"[Cancel]","color":"white","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
function worldtool:ui/anti_feedback_chat_message/load
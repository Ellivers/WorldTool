tag @s remove replacebrush
tag @s remove replacebrush_reversed
tag @s remove check_block_replacebrush
tag @s remove wt_block_check

function worldtool:ui_general/clear_chat
tellraw @s {"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back to the main brush menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_brush/select"}}

tellraw @s [{"text":"[Normal...]  ","color":"green","hoverEvent":{"action":"show_text","value":"Select which block to replace"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/select_replace/select.normal"}},{"text":"[Exclude...]  ","color":"gold","hoverEvent":{"action":"show_text","value":"Select which block to not replace"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/select_replace/select.reversed"}},{"text":"[Close]","color":"white","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/cancel"}}]

function worldtool:ui_general/anti_feedback_chat_message/load
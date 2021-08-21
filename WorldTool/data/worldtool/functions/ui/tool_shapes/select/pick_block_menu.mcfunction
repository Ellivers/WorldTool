tag @s add grabbing_block
tag @s add grabbing_block_gentool
function worldtool:ui/clear_chat
tellraw @s {"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back to the block selection menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/tool_shapes/select/select_block"}}
tellraw @s [{"text":"Select a block to pick  ","color":"aqua"},{"text":"[Cancel]","color":"red","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/tool_shapes/cancel"}}]
function worldtool:ui/anti_feedback_chat_message/load

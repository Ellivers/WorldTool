tag @s add grabbing_block
tag @s remove grabbing_block_replace
tag @s remove check_block_brush
tag @s remove wt_block_check
function worldtool:ui_general/clear_chat
tellraw @s [{"text":"Select a block to pick  ","color":"aqua"},{"text":"[Close]","color":"red","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/cancel"}}]
function worldtool:ui_general/anti_feedback_chat_message/load

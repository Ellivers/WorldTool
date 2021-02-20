function worldtool:ui_general/clear_chat
tellraw @s {"text":"Select a color:\n\n\n","color":"gold","bold":true}

tellraw @s {"text":"\n[White]","color":"white","hoverEvent":{"action":"show_text","value":"White"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/select_color/white"}}
tellraw @s {"text":"[Red]","color":"red","hoverEvent":{"action":"show_text","value":"Red"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/select_color/red"}}
function worldtool:ui_general/anti_feedback_chat_message/load
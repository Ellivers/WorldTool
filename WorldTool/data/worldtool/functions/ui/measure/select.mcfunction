tag @s remove placing_fill
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n[Run]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"Measure the amount of blocks, width, height and length of the selected area"},"clickEvent":{"action":"run_command","value":"/function worldtool:measure/load"}},{"text":"[Filter...]  ","color":"gold","hoverEvent":{"action":"show_text","value":"Count the amount of the specified block(s) in the selected area"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/measure/filtered/select"}},{"text":"[Cancel]","color":"white","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
function worldtool:ui/anti_feedback_chat_message/load
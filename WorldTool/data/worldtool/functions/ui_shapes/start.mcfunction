function worldtool:ui_general/clear_chat
function worldtool:ui_general/anti_feedback_chat_message/load

execute if score $functionRunning worldtool matches 1.. run tellraw @s {"text": "Another process is currently running","color":"red"}
execute unless score $functionRunning worldtool matches 1.. run function worldtool:processes/generate_shape/get_block

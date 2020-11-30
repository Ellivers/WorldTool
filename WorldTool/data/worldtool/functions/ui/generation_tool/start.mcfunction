function worldtool:ui/clear_chat
function worldtool:ui/anti_feedback_chat_message/load

execute if score $functionRunning worldtool matches 1.. run tellraw @s {"text": "Another process is currently running","color":"red"}
execute unless score $functionRunning worldtool matches 1.. run function worldtool:generate_shape/get_block

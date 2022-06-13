# Called by worldtool:process/writer_not_found
# Displays an error

scoreboard players set #success worldtool 1

tellraw @s ["\n\n",{"nbt":"Translation.\"error.writer_not_found\"","storage": "worldtool:storage","color": "red"},"\n\n",{"nbt":"Translation.\"button.kill_process.name\"","storage": "worldtool:storage","color": "red","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.kill_process.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/kill_process"}}]

function worldtool:ui/anti_feedback_chat_message/load

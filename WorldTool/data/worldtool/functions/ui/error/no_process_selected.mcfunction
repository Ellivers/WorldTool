# Called by worldtool:process_start/common/setup_process
# Displays an error

function worldtool:ui/clear_chat
tellraw @s {"nbt":"Translation.\"error.no_process_selected\"","storage": "worldtool:storage","color": "red"}

function worldtool:ui/anti_feedback_chat_message/load

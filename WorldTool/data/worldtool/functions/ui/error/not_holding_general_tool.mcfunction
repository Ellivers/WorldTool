# Called by worldtool:ui_general/check_tool
# Displays an error

tellraw @s {"nbt":"Translation.\"error.not_holding_general_tool\"","storage": "worldtool:storage","color": "red"}
tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load

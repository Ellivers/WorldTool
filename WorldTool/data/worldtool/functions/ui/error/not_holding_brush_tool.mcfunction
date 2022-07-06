# Called by worldtool:ui_brush/check_tool
# Displays an error

function worldtool:ui/clear_chat
tellraw @s {"nbt":"Translation.\"error.not_holding_brush_tool\"","storage": "worldtool:storage","color": "red"}
function worldtool:ui/anti_feedback_chat_message/load

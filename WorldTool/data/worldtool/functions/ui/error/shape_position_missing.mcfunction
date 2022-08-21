# Called by worldtool:use_shapes/load
# Displays an error

function worldtool:ui/clear_chat
tellraw @s {"nbt":"Translation.\"error.shape_position_missing\"","storage": "worldtool:storage","color": "red"}
function worldtool:ui/anti_feedback_chat_message/load

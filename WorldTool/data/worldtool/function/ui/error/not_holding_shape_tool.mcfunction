# Called by worldtool:ui_shapes/check_tool
# Displays an error

tellraw @s {"nbt":"Translation.\"error.not_holding_shape_tool\"","storage": "worldtool:storage","color": "red"}
tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load

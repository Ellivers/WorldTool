# Called by worldtool:process_start/shapes/load
# Displays an error

scoreboard players set #success worldtool 0

tellraw @s ["\n",{"nbt":"Translation.\"error.shape_position_missing\"","storage": "worldtool:storage","color": "red"}]
function worldtool:ui/anti_feedback_chat_message/load

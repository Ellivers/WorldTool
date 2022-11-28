# Called by worldtool:ui_shapes/menu
# Displays an error

scoreboard players set #success worldtool 0

tellraw @s ["\n",{"nbt":"Translation.\"error.shape_position_duplicates\"","storage": "worldtool:storage","color": "red"}]
function worldtool:ui/anti_feedback_chat_message/load

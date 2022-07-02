# Called by worldtool:process/load_area/error
# Displays an error

scoreboard players set #success worldtool 0

tellraw @s {"nbt":"Translation.\"error.template_not_found\"","storage": "worldtool:storage","color": "red"}
function worldtool:ui/anti_feedback_chat_message/load

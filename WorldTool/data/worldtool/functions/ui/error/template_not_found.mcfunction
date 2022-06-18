# Called by worldtool:process/load_area/template_not_found
# Displays an error

scoreboard players set #success worldtool 0

function worldtool:ui/clear_chat
tellraw @s {"nbt":"Translation.\"error.template_not_found\"","storage": "worldtool:storage","color": "red"}
function worldtool:ui/anti_feedback_chat_message/load

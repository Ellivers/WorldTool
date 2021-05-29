# Called by worldtool:technical/common/check/positions
# Displays an error

scoreboard players set #success worldtool 0

function worldtool:ui/clear_chat
tellraw @s {"nbt":"Translation.\"error.pos2_missing\"","storage": "worldtool:storage","color": "red"}
function worldtool:ui/anti_feedback_chat_message/load

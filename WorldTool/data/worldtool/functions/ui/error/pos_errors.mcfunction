# Called by worldtool:technical/common/check/positions
# General error for messed up position counts

scoreboard players set #success worldtool 0

function worldtool:ui/clear_chat
tellraw @s {"nbt":"Translation.\"error.positions\"","storage": "worldtool:storage","color": "red"}
function worldtool:ui/anti_feedback_chat_message/load

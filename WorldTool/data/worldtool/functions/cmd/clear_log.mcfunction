# Called manually
# Resets the log

data modify storage worldtool:storage Log set value []
tellraw @s {"nbt":"Translation.\"info.log_cleared\"","storage": "worldtool:storage"}
function worldtool:ui/anti_feedback_chat_message/load

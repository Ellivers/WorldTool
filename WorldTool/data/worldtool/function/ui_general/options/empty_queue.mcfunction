# Called by worldtool:ui_general/options/menu
# Empties the process queue

data modify storage worldtool:storage Processes set value []

tellraw @s {"nbt":"Translation.\"info.emptied_queue\"","storage": "worldtool:storage"}

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load

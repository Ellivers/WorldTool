# Called by worldtool:process/load_area/error/out_of_bounds
# Displays an error

scoreboard players set #success worldtool 0

tellraw @s {"nbt":"Translation.\"error.out_of_bounds_place\"","storage": "worldtool:storage","color": "red"}
function worldtool:ui/anti_feedback_chat_message/load

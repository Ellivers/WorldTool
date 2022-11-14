# Called by worldtool:process_end/message
# Displays the found command lists

scoreboard players set #temp worldtool 0
function worldtool:ui_general/command_list/message
tellraw @s {"nbt":"Translation.\"info.command_list.instructions\"","storage": "worldtool:storage","color": "yellow"}

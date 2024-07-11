# Called recursively and by worldtool:process_end/message
# Displays the found command lists

scoreboard players add #temp worldtool 1

tellraw @s ["",{"nbt":"Translation.\"info.command_list.list_number\"","storage": "worldtool:storage","interpret": true},"\n",{"nbt":"Processes[-1].Output.CommandLists[0][]","storage": "worldtool:storage","separator": "WORLDTOOL_LINEBREAK"}]
data remove storage worldtool:storage Processes[-1].Output.CommandLists[0]

execute if data storage worldtool:storage Processes[-1].Output.CommandLists[0] run function worldtool:ui_general/command_list/message

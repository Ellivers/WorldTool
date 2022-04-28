# Called by worldtool:cmd/view_log
# Loops through and displays the log entries

scoreboard players add #temp worldtool 1

tellraw @s {"nbt":"Log[0]","storage": "worldtool:storage","interpret": true}

data modify storage worldtool:storage Log append from storage worldtool:storage Log[0]
data remove storage worldtool:storage Log[0]

execute unless score #temp worldtool >= #temp2 worldtool run function worldtool:technical/cmd_log_loop

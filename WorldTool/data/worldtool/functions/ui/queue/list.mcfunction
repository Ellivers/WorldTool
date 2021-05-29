# Called by worldtool:ui/queue/message
# Recursive function that lists the queued processes

scoreboard players add #temp2 worldtool 1

tellraw @s {"nbt":"Processes[0]","storage": "worldtool:storage","interpret": true}

data modify storage worldtool:storage Processes append from storage worldtool:storage Process[0]
data remove storage worldtool:storage Processes[0]

execute unless score #temp2 worldtool >= #temp worldtool run function worldtool:ui/queue/list

# Called by worldtool:ui/queue/message
# Recursive function that lists the queued processes

scoreboard players add #temp2 worldtool 1

execute unless score #temp2 worldtool > @s wt.queue_pos run tellraw @s {"nbt":"Processes[-1].DisplayName","storage": "worldtool:storage","interpret": true}

data modify storage worldtool:storage Processes prepend from storage worldtool:storage Processes[-1]
data remove storage worldtool:storage Processes[-1]

execute unless score #temp2 worldtool >= #temp worldtool run function worldtool:ui/queue/list

# Called by worldtool:ui/queue/message
# Recursive function that lists the queued processes

scoreboard players remove #temp worldtool 1

execute unless score #temp worldtool < #queuePos worldtool store result score #temp2 worldtool run data get storage worldtool:storage Processes[-1].Hidden
execute unless score #temp worldtool < #queuePos worldtool if data storage worldtool:storage Processes[-1].Owner if data storage worldtool:storage Processes[-1].DisplayName if score #temp2 worldtool matches 0 run tellraw @s {"nbt":"Processes[-1].DisplayName","storage": "worldtool:storage","interpret": true}
execute unless score #temp worldtool < #queuePos worldtool unless data storage worldtool:storage Processes[-1].Owner if data storage worldtool:storage Processes[-1].DisplayName if score #temp2 worldtool matches 0 run tellraw @s ["",{"nbt":"Processes[-1].DisplayName","storage": "worldtool:storage","interpret": true},{"nbt":"Translation.\"info.queue.from_command\"","storage": "worldtool:storage"}]

data modify storage worldtool:storage Processes prepend from storage worldtool:storage Processes[-1]
data remove storage worldtool:storage Processes[-1]

execute if score #temp worldtool matches 1.. run function worldtool:ui/queue/list

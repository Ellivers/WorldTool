# Called by worldtool:ui/queue/message
# Recursive function that lists the queued processes

scoreboard players add #temp2 worldtool 1

execute store result score #temp4 worldtool run data get storage worldtool:storage Processes[-1].Owner
execute if score #temp4 worldtool = #ID_temp worldtool run scoreboard players add #temp3 worldtool 1
execute if score #temp4 worldtool = #ID_temp worldtool run scoreboard players set #temp5 worldtool 1

execute if score #temp5 worldtool matches 0 if data storage worldtool:storage Processes[-1].Owner if data storage worldtool:storage Processes[-1].DisplayName run tellraw @s {"nbt":"Processes[-1].DisplayName","storage": "worldtool:storage","interpret": true}
execute if score #temp5 worldtool matches 0 unless data storage worldtool:storage Processes[-1].Owner if data storage worldtool:storage Processes[-1].DisplayName run tellraw @s ["",{"nbt":"Processes[-1].DisplayName","storage": "worldtool:storage","interpret": true},{"nbt":"Translation.\"info.queue.from_command\"","storage": "worldtool:storage"}]

data modify storage worldtool:storage Processes prepend from storage worldtool:storage Processes[-1]
data remove storage worldtool:storage Processes[-1]

execute unless score #temp2 worldtool >= #temp worldtool run function worldtool:ui/queue/list

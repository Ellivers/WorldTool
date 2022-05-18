# Called recursively and by worldtool:ui/queue/message
# Gets the player's queue position

scoreboard players add #temp4 worldtool 1

execute if score #temp5 worldtool matches 0 store result score #temp6 worldtool run data get storage worldtool:storage Processes[0].Invisible
execute if score #temp5 worldtool matches 0 store result score #temp2 worldtool run data get storage worldtool:storage Processes[0].Owner
execute if score #temp5 worldtool matches 0 if score #temp6 worldtool matches 0 run scoreboard players remove #temp3 worldtool 1
execute if score #temp2 worldtool = #ID_temp worldtool if score #temp6 worldtool matches 0 run scoreboard players set #temp5 worldtool 1

data modify storage worldtool:storage Processes append from storage worldtool:storage Processes[0]
data remove storage worldtool:storage Processes[0]

execute unless score #temp4 worldtool >= #temp worldtool run function worldtool:ui/queue/get_queue_position

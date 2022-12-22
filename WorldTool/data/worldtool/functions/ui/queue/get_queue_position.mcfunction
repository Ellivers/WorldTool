# Called recursively and by worldtool:ui/queue/message
# Gets the player's queue position

scoreboard players add #temp worldtool 1

execute if score #temp2 worldtool matches 0 store result score #temp3 worldtool run data get storage worldtool:storage Processes[0].Hidden
execute if score #temp2 worldtool matches 0 store result score #temp4 worldtool run data get storage worldtool:storage Processes[0].Owner
execute if score #temp2 worldtool matches 0 if score #temp3 worldtool matches 0 run scoreboard players add #queuePos worldtool 1
execute if score #temp4 worldtool = #ID_temp worldtool if score #temp3 worldtool matches 0 run scoreboard players set #temp2 worldtool 1

data modify storage worldtool:storage Processes prepend from storage worldtool:storage Processes[-1]
data remove storage worldtool:storage Processes[-1]

execute unless score #temp worldtool >= #queueProcessCount worldtool run function worldtool:ui/queue/get_queue_position

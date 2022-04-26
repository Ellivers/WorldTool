# Called recursively and by worldtool:ui/queue/load
# Gets the additional amount to add to the user's queue score due to queued command processes

scoreboard players add #temp2 worldtool 1

execute unless score #temp4 worldtool matches 1 run data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]
execute unless score #temp4 worldtool matches 1 if data storage worldtool:storage Temp.Process{FromCommand:1b} run scoreboard players add #temp3 worldtool 1
execute unless score #temp4 worldtool matches 1 unless data storage worldtool:storage Temp.Process{FromCommand:1b} run scoreboard players set #temp4 worldtool 1

data modify storage worldtool:storage Processes prepend from storage worldtool:storage Processes[-1]
data remove storage worldtool:storage Processes[-1]

execute unless score #temp2 worldtool >= #temp5 worldtool run function worldtool:ui/queue/get_cmd_amount_to_add

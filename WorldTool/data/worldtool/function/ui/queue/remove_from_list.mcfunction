# Called recursively and by worldtool:ui/queue/back
# Removes the queued processes owned by the current user

scoreboard players add #temp worldtool 1

data modify storage worldtool:storage Processes prepend from storage worldtool:storage Processes[-1]
data remove storage worldtool:storage Processes[-1]

execute store result score #temp3 worldtool run data get storage worldtool:storage Processes[-1].Owner
execute if score #temp3 worldtool = #ID_temp worldtool run data remove storage worldtool:storage Processes[-1]

execute unless score #temp worldtool >= #temp2 worldtool run function worldtool:ui/queue/remove_from_list

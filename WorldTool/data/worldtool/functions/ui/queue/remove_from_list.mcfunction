# Called recursively and by worldtool:ui/queue/back
# Removes the queued process with the index of the executing player's queue position

scoreboard players add #temp2 worldtool 1

data modify storage worldtool:storage NewProcesses append from storage worldtool:storage NewProcesses[-1]
data remove storage worldtool:storage NewProcesses[-1]

execute if score #temp2 worldtool = #temp worldtool run data remove storage worldtool:storage NewProcesses[-1]

execute unless score #temp2 worldtool >= #temp3 worldtool run function worldtool:ui/queue/remove_from_list

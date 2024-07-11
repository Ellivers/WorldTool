# Called recursively and by worldtool:technical/queue/move
# Moves the queue until it finds the first player in the queue that's online

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]

scoreboard players set #queueSuccess worldtool 0
execute store result score #temp worldtool run data get storage worldtool:storage Temp.Process.Owner
execute as @a if score @s wt.ID = #temp worldtool unless score $processRunning worldtool matches 1.. run function worldtool:technical/queue/done
execute if score #temp worldtool matches 0 unless score $processRunning worldtool matches 1.. run function worldtool:technical/cmd/start
execute if score #temp worldtool matches 0 run scoreboard players set #queueSuccess worldtool 1

execute if score #queueSuccess worldtool matches 0 unless score $processRunning worldtool matches 1.. run data remove storage worldtool:storage Processes[-1]

execute if score #queueSuccess worldtool matches 0 unless score $processRunning worldtool matches 1.. run function worldtool:technical/queue/move_all

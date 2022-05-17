# Called recursively and by worldtool:ui/queue/move
# Moves the queue until it finds the first player in the queue that's online

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]

scoreboard players set #success worldtool 0
execute store result score #temp worldtool run data get storage worldtool:storage Temp.Process.Owner
execute as @a[tag=wt.menu.queue] if score @s wt.ID = #temp worldtool unless score $processRunning worldtool matches 1.. run function worldtool:ui/queue/done
execute if score #temp worldtool matches 0 run function worldtool:process_start/common/start
execute if score #temp worldtool matches 0 run scoreboard players set #success worldtool 1

execute if score #success worldtool matches 0 run data remove storage worldtool:storage Processes[-1]

execute if score #success worldtool matches 0 unless score $processRunning worldtool matches 1.. run function worldtool:ui/queue/move_all

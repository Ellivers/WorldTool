# Called by various functions
# Moves the queue one step

scoreboard players set #temp worldtool 0
execute if entity @a[scores={wt.queue_pos=1..}] run scoreboard players set #temp worldtool 1
execute if data storage worldtool:storage Processes[{FromCommand:1b}] run scoreboard players set #temp worldtool 1

execute unless score #temp worldtool matches 1 run data remove storage worldtool:storage Processes[-1]
execute if score #temp worldtool matches 1 run function worldtool:ui/queue/move_all

execute as @a[scores={wt.queue_pos=1..}] run function worldtool:ui/queue/message

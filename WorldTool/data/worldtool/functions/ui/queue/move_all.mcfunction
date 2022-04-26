# Called recursively and by worldtool:ui/queue/move
# Moves the queue until it finds the first player in the queue that's online

data remove storage worldtool:storage Processes[-1]
data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]

scoreboard players set #success worldtool 0
execute as @a[scores={wt.queue_pos=1}] unless score $processRunning worldtool matches 1.. run function worldtool:ui/queue/done
execute if data storage worldtool:storage Temp.Process{FromCommand:1b} run function worldtool:process_start/common/start

scoreboard players remove @a[scores={wt.queue_pos=2..}] wt.queue_pos 1

execute unless score #success worldtool matches 1.. unless score $processRunning worldtool matches 1.. run function worldtool:ui/queue/move_all

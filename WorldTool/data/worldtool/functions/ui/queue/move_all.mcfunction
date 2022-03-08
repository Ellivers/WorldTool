# Called recursively and by worldtool:ui/queue/move
# Moves the queue until it finds the first player in the queue that's online

data remove storage worldtool:storage Processes[-1]

scoreboard players set #success worldtool 0
execute as @a[scores={wt.queue_pos=1}] unless score $processRunning worldtool matches 1.. run function worldtool:ui/queue/done

scoreboard players remove @a[scores={wt.queue_pos=2..}] wt.queue_pos 1

execute unless score #success worldtool matches 1.. unless score $processRunning worldtool matches 1.. run function worldtool:ui/queue/move_all

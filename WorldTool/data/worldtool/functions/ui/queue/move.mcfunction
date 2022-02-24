# Called by various functions
# Moves the queue one step

data remove storage worldtool:storage Processes[-1]

execute as @a[scores={wt.queue_pos=1}] unless score $processRunning worldtool matches 1.. run function worldtool:ui/queue/done

scoreboard players remove @a[scores={wt.queue_pos=2..}] wt.queue_pos 1
execute as @a[scores={wt.queue_pos=2..}] run function worldtool:ui/queue/message

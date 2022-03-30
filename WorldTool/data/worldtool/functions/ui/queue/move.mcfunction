# Called by various functions
# Moves the queue one step

execute if entity @a[scores={wt.queue_pos=1..}] run function worldtool:ui/queue/move_all
execute unless entity @a[scores={wt.queue_pos=1..}] run data remove storage worldtool:storage Processes[-1]

execute as @a[scores={wt.queue_pos=1..}] run function worldtool:ui/queue/message

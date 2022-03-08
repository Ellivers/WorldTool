# Called by various functions
# Moves the queue one step

function worldtool:ui/queue/move_all

execute as @a[scores={wt.queue_pos=1..}] run function worldtool:ui/queue/message

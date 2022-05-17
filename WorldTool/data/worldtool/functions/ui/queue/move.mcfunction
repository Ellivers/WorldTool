# Called by various functions
# Moves the queue one step

data remove storage worldtool:storage Processes[-1]

execute if data storage worldtool:storage Processes[-1] run function worldtool:ui/queue/move_all

execute as @a[tag=wt.menu.queue] run function worldtool:ui/queue/message

# Called by worldtool:ui/queue/move
# Starts the process

tag @s remove wt.in_queue
scoreboard players reset @s wt.queue_pos

execute if entity @s[tag=wt.start.common] run function worldtool:process_start/common/continue2

function #worldtool:addon/process_start/from_queue

# Called by worldtool:ui/queue/move_all
# Starts the process

scoreboard players set #success worldtool 1

tag @s remove wt.menu.queue
scoreboard players reset @s wt.queue_pos

execute if entity @s[tag=wt.start.common] run function worldtool:process_start/common/continue2

function #worldtool:addon/process_start/from_queue

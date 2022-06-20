# Called by worldtool:ui/queue/move_all
# Starts the process

scoreboard players set #success worldtool 1

tag @s remove wt.menu.queue

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]

scoreboard players set #commonStart worldtool 0
execute if data storage worldtool:storage Temp.Process{StartType:"worldtool:common"} run scoreboard players set #commonStart worldtool 1
execute unless data storage worldtool:storage Temp.Process.StartType run scoreboard players set #commonStart worldtool 1
execute if score #commonStart worldtool matches 1 run function worldtool:process_start/common/continue/2

function #worldtool:addon/process_start/from_queue

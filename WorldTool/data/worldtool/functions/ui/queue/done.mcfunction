# Called by worldtool:ui/queue/move_all
# Starts the process

scoreboard players set #success worldtool 1

tag @s remove wt.menu.queue

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]

execute unless data storage worldtool:storage Temp.Process.StartType run function worldtool:process_start/common/start
execute if data storage worldtool:storage Temp.Process{StartType:"worldtool:common"} run function worldtool:process_start/common/start
execute if data storage worldtool:storage Temp.Process{StartType:"worldtool:shape"} if data storage worldtool:storage Temp.Process.Owner run function worldtool:use_shapes/start
execute if data storage worldtool:storage Temp.Process{StartType:"worldtool:shape"} if data storage worldtool:storage Temp.Process.Owner run function worldtool:ui_shapes/menu

function #worldtool:addon/process_start/from_queue

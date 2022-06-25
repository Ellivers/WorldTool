# Called by worldtool:cmd/process/start_a and worldtool:cmd/process/start_b
# Starts a command process

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]

scoreboard players set #commonStart worldtool 0
execute if data storage worldtool:storage Temp.Process{StartType:"worldtool:common"} run scoreboard players set #commonStart worldtool 1
execute unless data storage worldtool:storage Temp.Process.StartType run scoreboard players set #commonStart worldtool 1
execute if score #commonStart worldtool matches 1 run function worldtool:process_start/common/start
execute if data storage worldtool:storage Temp.Process{StartType:"worldtool:common"} run function worldtool:process_start/start

function #worldtool:addon/cmd/start

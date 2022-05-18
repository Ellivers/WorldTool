# Called by worldtool:cmd/process/start_a and worldtool:cmd/process/start_b
# Starts a command process

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]
scoreboard players set #commonStart worldtool 1

function #worldtool:addon/cmd/start

execute if score #commonStart worldtool matches 1 run function worldtool:process_start/common/start

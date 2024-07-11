# Called by worldtool:cmd/process/start_a and worldtool:cmd/process/start_b
# Starts a command process

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]

execute if data storage worldtool:storage Temp.Process{ID:"worldtool:randomization_source"} run kill @e[type=minecraft:marker,tag=worldtool,tag=wt.randomization_source,scores={wt.ID=0}]

scoreboard players set #commonStart worldtool 0
execute if data storage worldtool:storage Temp.Process{StartType:"worldtool:common"} run scoreboard players set #commonStart worldtool 1
execute unless data storage worldtool:storage Temp.Process.StartType run scoreboard players set #commonStart worldtool 1
function #worldtool:hooks/cmd/start
execute if score #commonStart worldtool matches 1 run function worldtool:process_start/common/start

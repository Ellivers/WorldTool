# Called by worldtool:cmd/process/start_a and worldtool:cmd/process/start_b
# Commands to run before a command process is started

function worldtool:technical/cmd/check_start

execute if score #success worldtool matches 0 run data modify storage worldtool:storage Temp.LogMessage set value '{"nbt":"Translation.\\"error.log.invalid_process\\"","storage":"worldtool:storage","interpret":true}'
execute if score #success worldtool matches 0 run function worldtool:technical/cmd/add_to_log

# Called by worldtool:cmd/process/start_a and worldtool:cmd/process/start_b
# Commands to run before a command process is started

function worldtool:technical/cmd/check_start

execute if score #success worldtool matches 0 run data modify storage worldtool:storage Temp.LogEntry set value {Message:'{"nbt":"Translation.\\"error.log.invalid_process\\"","storage":"worldtool:storage","interpret":true}',Type:"error"}
execute if score #success worldtool matches 0 run function worldtool:technical/cmd/log/add

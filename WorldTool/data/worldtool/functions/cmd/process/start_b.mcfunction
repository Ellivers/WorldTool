# Called manually
# Starts the set process
# If another process is already running, nothing happens

data modify storage worldtool:storage CmdProcess.FromCommand set value 1b

function worldtool:technical/cmd/check_start

execute if score #success worldtool matches 0 run data modify storage worldtool:storage Temp.LogEntry set value '{"nbt":"Translation.\\"log.error.invalid_process\\"","storage":"worldtool:storage","interpret":true}'
execute if score #success worldtool matches 0 run function worldtool:technical/cmd/add_to_log

execute if score #success worldtool matches 1 unless score $processRunning worldtool matches 1.. run data modify storage worldtool:storage Processes prepend from storage worldtool:storage CmdProcess
execute if score #success worldtool matches 1 unless score $processRunning worldtool matches 1.. run function worldtool:process_start/common/start

execute if score #success worldtool matches 1 if score $processRunning worldtool matches 1.. run data modify storage worldtool:storage Temp.LogEntry set value '{"nbt":"Translation.\\"log.info.process_already_running.cancel\\"","storage":"worldtool:storage","interpret":true}'
execute if score #success worldtool matches 1 if score $processRunning worldtool matches 1.. run function worldtool:technical/cmd/add_to_log

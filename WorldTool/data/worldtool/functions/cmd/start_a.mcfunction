# Called manually
# Starts the set process
# If another process is already running, this one will be added to the queue

function worldtool:technical/cmd/before_start

execute if score #success worldtool matches 1 run data modify storage worldtool:storage Processes prepend from storage worldtool:storage CmdProcess
execute if score #success worldtool matches 1 unless score $processRunning worldtool matches 1.. run function worldtool:technical/cmd/start

execute if score #success worldtool matches 1 if score $processRunning worldtool matches 1.. run data modify storage worldtool:storage Temp.LogEntry set value {Message:'{"nbt":"Translation.\\"info.log.process_already_running.queue\\"","storage":"worldtool:storage"}',Type:"info"}
execute if score #success worldtool matches 1 if score $processRunning worldtool matches 1.. run function worldtool:technical/cmd/log/add

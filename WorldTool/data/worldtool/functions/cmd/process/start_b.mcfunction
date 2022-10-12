# Called manually
# Starts the set process
# If another process is already running, nothing happens

function worldtool:technical/cmd/before_start

execute if score #success worldtool matches 1 unless score $processRunning worldtool matches 1.. run data modify storage worldtool:storage Processes prepend from storage worldtool:storage CmdProcess
execute if score #success worldtool matches 1 unless score $processRunning worldtool matches 1.. run function worldtool:technical/cmd/start

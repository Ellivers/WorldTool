# Called by worldtool:process_start/general/load
# Checks if a process is running

scoreboard players set #success worldtool 1

execute if score $processRunning worldtool matches 1.. run function worldtool:ui/queue/load

# Called by worldtool:use_shapes/load and worldtool:use_shapes/block_updated
# Checks if a function is running

scoreboard players set #success worldtool 1

execute if score $processRunning worldtool matches 1.. run function worldtool:ui/queue/load

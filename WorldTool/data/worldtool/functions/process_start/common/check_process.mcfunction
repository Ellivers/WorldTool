# Called by worldtool:process_start/common/load
# Checks if a function is running

scoreboard players set #success worldtool 1

execute if score $functionRunning worldtool matches 1.. run tag @s add wt.start.common
execute if score $functionRunning worldtool matches 1.. run function worldtool:ui/queue/load

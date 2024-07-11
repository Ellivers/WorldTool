# Called by #minecraft:tick

# Commands to be run by players
execute if score $playerInput worldtool matches 1 as @a at @s run function worldtool:technical/tick/player

# Block input tick
execute if score $playerInput worldtool matches 1 as @e[type=minecraft:marker,tag=worldtool,tag=wt.input,tag=!wt.dont_check] at @s run function worldtool:input_check/main

# Commands to be run while a process is running
execute if score $processRunning worldtool matches 1.. run function worldtool:technical/tick/process

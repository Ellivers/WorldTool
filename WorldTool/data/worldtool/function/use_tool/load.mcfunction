# Called by worldtool:tick/player
# Commands for when right-clicking any coas

execute if predicate worldtool:tools/any run function worldtool:use_tool/use
scoreboard players reset @s wt.use_coas

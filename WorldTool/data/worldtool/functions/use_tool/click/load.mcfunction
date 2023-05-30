# Called by worldtool:tick/player
# Commands for when right-clicking any carrot on a stick

execute if predicate worldtool:tools/any run function worldtool:use_tool/click/use
scoreboard players reset @s wt.use_coas

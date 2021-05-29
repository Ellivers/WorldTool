# Called by worldtool:tick
# Commands ticked for players

execute if score @s wt.use_coas matches 1.. run function worldtool:use_tool/load
execute if score @s wt.drop_coas matches 1.. run function worldtool:drop_tool/load

# Called by worldtool:use_tool/ray_hit/load
# Makes sure no process is running, then does some brush stuff

function worldtool:use_tool/remove_tags

execute if score $processRunning worldtool matches 1.. run data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]
execute if score $processRunning worldtool matches 1.. unless data storage worldtool:storage Temp.Process{StartType:"worldtool:brush"} run tellraw @s {"nbt":"Translation.\"error.process_running\"","storage": "worldtool:storage","color": "red"}
execute unless score $processRunning worldtool matches 1.. run function worldtool:use_brush/check

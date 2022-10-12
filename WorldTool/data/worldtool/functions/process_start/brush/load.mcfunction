# Called by worldtool:use_tool/ray_hit/load
# Makes sure no process is running, then does some brush stuff

function worldtool:use_tool/remove_tags

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]
execute store result score #ID_temp worldtool run data get storage worldtool:storage Temp.Process.Owner
execute if score $processRunning worldtool matches 1.. unless score #ID_temp worldtool = @s wt.ID unless data storage worldtool:storage Temp.Process{StartType:"worldtool:brush"} run tellraw @s {"nbt":"Translation.\"error.process_running\"","storage": "worldtool:storage","color": "red"}
execute unless score $processRunning worldtool matches 1.. run function worldtool:process_start/brush/check

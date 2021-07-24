# Called by worldtool:use_tool/ray_hit/load
# Makes sure no process is running, then does some brush stuff

function worldtool:use_tool/remove_tags

execute if score $functionRunning worldtool matches 1.. run tellraw @s {"nbt":"Translation.\"error.process_running\"","storage": "worldtool:storage","color": "red"}
execute unless score $functionRunning worldtool matches 1.. run function worldtool:use_brush/check

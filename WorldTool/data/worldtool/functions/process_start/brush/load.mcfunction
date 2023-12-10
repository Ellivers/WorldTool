# Called by worldtool:use_tool/click/ray_hit/load
# Makes sure no process is running, then does some brush stuff

function worldtool:use_tool/remove_tags

#function worldtool:technical/common/is_my_process_running
execute if predicate worldtool:brush_tool/brushes/none run tellraw @s {"nbt":"Translation.\"error.no_brush\"","storage": "worldtool:storage","color": "gold"}
execute if entity @s[tag=!wt.user,predicate=!worldtool:brush_tool/brushes/none] unless score $processRunning worldtool matches 1.. run function worldtool:ui/verify_operator/display
execute if entity @s[tag=wt.user,predicate=!worldtool:brush_tool/brushes/none] if score $processRunning worldtool matches 1.. unless data storage worldtool:storage Temp.Process{StartType:"worldtool:brush"} run tellraw @s {"nbt":"Translation.\"error.process_running\"","storage": "worldtool:storage","color": "red"}

execute if entity @s[tag=wt.user,predicate=!worldtool:brush_tool/brushes/none] unless score $processRunning worldtool matches 1.. run function worldtool:process_start/brush/check

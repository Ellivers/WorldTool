# Called by worldtool:use_tool/click/ray_hit/load
# Makes sure no process is running, then does some brush stuff

function worldtool:use_tool/remove_tags

tellraw @s[predicate=worldtool:brush_tool/brushes/none,predicate=worldtool:common_settings/control_scheme/normal] {"nbt":"Translation.\"error.no_brush.normal\"","storage": "worldtool:storage","color": "gold","interpret": true}
tellraw @s[predicate=worldtool:brush_tool/brushes/none,predicate=worldtool:common_settings/control_scheme/limited] {"nbt":"Translation.\"error.no_brush.limited\"","storage": "worldtool:storage","color": "gold","interpret": true}
function #worldtool:hooks/ui_brush/no_brush_message

execute if entity @s[tag=!wt.user,predicate=!worldtool:brush_tool/brushes/none] unless score $processRunning worldtool matches 1.. run function worldtool:ui/verify_operator/display
execute if entity @s[tag=wt.user,predicate=!worldtool:brush_tool/brushes/none] if score $processRunning worldtool matches 1.. unless data storage worldtool:storage Temp.Process{StartType:"worldtool:brush"} run tellraw @s {"nbt":"Translation.\"error.process_running\"","storage": "worldtool:storage","color": "red"}

execute if entity @s[tag=wt.user,predicate=!worldtool:brush_tool/brushes/none] unless score $processRunning worldtool matches 1.. run function worldtool:process_start/brush/check

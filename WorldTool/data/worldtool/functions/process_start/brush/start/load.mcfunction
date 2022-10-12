# Called by worldtool:process_start/brush/area/load and worldtool:process_start/brush/check

execute unless entity @s[predicate=!worldtool:brush_tool/brushes/paint,predicate=!worldtool:brush_tool/brushes/place,predicate=!worldtool:brush_tool/brushes/replace] run function worldtool:process_start/brush/start/normal/start
execute if predicate worldtool:brush_tool/brushes/circle run function worldtool:process_start/brush/start/shapes/circle
execute if predicate worldtool:brush_tool/brushes/sphere run function worldtool:process_start/brush/start/shapes/sphere
execute if predicate worldtool:brush_tool/brushes/structure run function worldtool:process_start/brush/start/place_structure

function #worldtool:addon/use_brush/start

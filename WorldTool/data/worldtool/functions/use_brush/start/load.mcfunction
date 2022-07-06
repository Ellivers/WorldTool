# Called by worldtool:use_brush/area/load and worldtool:use_brush/check

execute unless entity @s[predicate=!worldtool:brush_tool/brushes/paint,predicate=!worldtool:brush_tool/brushes/place,predicate=!worldtool:brush_tool/brushes/replace] run function worldtool:use_brush/start/normal/start
execute if predicate worldtool:brush_tool/brushes/circle run function worldtool:use_brush/start/shapes/circle
execute if predicate worldtool:brush_tool/brushes/sphere run function worldtool:use_brush/start/shapes/sphere

function #worldtool:addon/use_brush/start

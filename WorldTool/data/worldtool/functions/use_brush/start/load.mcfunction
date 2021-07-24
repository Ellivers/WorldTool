# Called by worldtool:use_brush/area/load and worldtool:use_brush/check

function #worldtool:addon/use_brush/start

execute unless entity @s[predicate=!worldtool:brush_tool/brushes/paint,predicate=!worldtool:brush_tool/brushes/place,predicate=!worldtool:brush_tool/brushes/replace] run function worldtool:use_brush/start/normal/load

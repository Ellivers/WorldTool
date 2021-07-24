# Called by worldtool:use_brush/load
# Different options for selecting an area for the brush process to use

execute if predicate worldtool:brush_tool/settings/flat unless entity @s[predicate=!worldtool:brush_tool/brushes/paint,predicate=!worldtool:brush_tool/brushes/place] run tag @s add wt.brush_area.flat
tag @s[tag=!wt.brush_area.flat] add wt.brush_area.normal

function #worldtool:addon/use_brush/area/add_tags

execute if entity @s[tag=wt.brush_area.flat] run function worldtool:use_brush/area/flat/load
execute if entity @s[tag=wt.brush_area.normal] run function worldtool:use_brush/area/normal/load

function #worldtool:addon/use_brush/area/remove_tags

tag @s remove wt.brush_area.flat
tag @s remove wt.brush_area.normal

function worldtool:use_brush/start/load

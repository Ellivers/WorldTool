# Called by worldtool:use_brush/area/flat/load

execute if predicate worldtool:brush_tool/settings/before_block run function worldtool:use_brush/area/flat/get_axis/outside_block
execute unless predicate worldtool:brush_tool/settings/before_block run function worldtool:use_brush/area/flat/get_axis/inside_block

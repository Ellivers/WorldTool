# Called by worldtool:process_start/brush\get_axis\load
# Gets the axis based on raycast position

execute if predicate worldtool:brush_tool/settings/before_block run function worldtool:technical/common/get_direction/outside_block
execute unless predicate worldtool:brush_tool/settings/before_block run function worldtool:technical/common/get_direction/inside_block

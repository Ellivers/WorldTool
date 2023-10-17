# Called by worldtool:process_start/brush/get_axis/load
# Gets the axis based on raycast position

execute if predicate worldtool:brush_tool/settings/before_block positioned ^ ^ ^.5 run function worldtool:technical/common/get_direction/load
execute unless predicate worldtool:brush_tool/settings/before_block run function worldtool:technical/common/get_direction/load

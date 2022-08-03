# Called by various functions
# Makes sure you're holding the Shape Generation Tool

execute unless predicate worldtool:tools/shapes run function worldtool:ui/error/not_holding_shape_tool
execute unless predicate worldtool:tools/shapes run function worldtool:technical/common/stop

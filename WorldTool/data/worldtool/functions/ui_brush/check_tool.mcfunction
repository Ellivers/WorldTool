# Called by various functions
# Makes sure you're holding the Brush Tool

execute unless predicate worldtool:tools/brush run function worldtool:ui/error/not_holding_brush_tool
execute unless predicate worldtool:tools/brush run function worldtool:technical/common/stop

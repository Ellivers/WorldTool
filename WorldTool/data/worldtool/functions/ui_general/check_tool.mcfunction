# Called by various functions
# Makes sure you're holding the General Tool

execute unless predicate worldtool:tools/general run function worldtool:ui/error/not_holding_general_tool
execute unless predicate worldtool:tools/general run function worldtool:technical/common/stop

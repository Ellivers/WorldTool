# Called by various functions
# Makes sure you're holding the General Tool

execute if entity @s[predicate=!worldtool:tools/general,tag=wt.go_back] run function worldtool:ui/back_using_tags
execute unless predicate worldtool:tools/general run function worldtool:ui/error/not_holding_general_tool
tag @s remove wt.go_back

execute unless predicate worldtool:tools/general run function worldtool:technical/common/stop

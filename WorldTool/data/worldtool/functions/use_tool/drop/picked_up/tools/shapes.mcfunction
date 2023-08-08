# Called by worldtool:use_tool/drop/picked_up
# Commands for throwing and picking up the Shape Tool

tag @s remove wt.shape_tool_thrown

execute unless predicate worldtool:tools/shapes run tellraw @s {"nbt":"Translation.\"info.item_position\"","storage": "worldtool:storage"}

execute if predicate worldtool:tools/shapes if predicate worldtool:common_settings/control_scheme/normal run function worldtool:ui_shapes/menu
execute if predicate worldtool:tools/shapes if predicate worldtool:common_settings/control_scheme/limited run function worldtool:use_tool/drop/picked_up/cycle_reach

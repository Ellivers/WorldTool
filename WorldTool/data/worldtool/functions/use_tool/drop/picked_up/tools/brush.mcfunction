# Called by worldtool:use_tool/drop/picked_up
# Commands for throwing and picking up the Brush Tool

tag @s remove wt.brush_tool_thrown

execute unless predicate worldtool:tools/brush run tellraw @s {"nbt":"Translation.\"info.item_position\"","storage": "worldtool:storage"}

execute if predicate worldtool:tools/brush if predicate worldtool:tools/settings/control_scheme/normal run function worldtool:ui_brush/menu
execute if predicate worldtool:tools/brush if predicate worldtool:tools/settings/control_scheme/limited run function worldtool:use_tool/drop/picked_up/cycle_reach

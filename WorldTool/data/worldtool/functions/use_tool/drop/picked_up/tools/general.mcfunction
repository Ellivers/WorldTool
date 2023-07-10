# Called by worldtool:use_tool/drop/picked_up
# Commands for throwing and picking up the General Tool

tag @s remove wt.general_tool_thrown

execute unless predicate worldtool:tools/general run tellraw @s {"nbt":"Translation.\"info.item_position\"","storage": "worldtool:storage"}

execute if predicate worldtool:tools/general if predicate worldtool:tools/settings/control_scheme/normal run function worldtool:ui_general/set_tool/switch
execute if predicate worldtool:tools/general if predicate worldtool:tools/settings/control_scheme/limited run function worldtool:use_tool/drop/picked_up/cycle_reach

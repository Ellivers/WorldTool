# Called by the advancement worldtool:pick_up_general_tool
# Commands for throwing and picking up the General Tool

advancement revoke @s only worldtool:pick_up_general_tool
tag @s remove wt.general_tool_thrown

execute if predicate worldtool:tools/settings/control_scheme/normal run function worldtool:ui_general/set_tool/switch
execute if predicate worldtool:tools/settings/control_scheme/limited run function worldtool:use_tool/drop/tools/general/picked_up/limited

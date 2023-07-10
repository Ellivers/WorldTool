# Called by the worldtool:pick_up_tool advancement
# Commands to run when a dropped WorldTool tool has been picked back up

advancement revoke @s only worldtool:pick_up_tool
tag @s remove wt.tool_thrown

execute if entity @s[tag=wt.general_tool_thrown] run function worldtool:use_tool/drop/picked_up/tools/general
execute if entity @s[tag=wt.brush_tool_thrown] run function worldtool:use_tool/drop/tools/general/picked_up/load
execute if entity @s[tag=wt.shape_tool_thrown] run function worldtool:use_tool/drop/tools/general/picked_up/load

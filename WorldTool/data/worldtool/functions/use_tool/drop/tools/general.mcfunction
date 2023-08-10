# Called by worldtool:use_tool/drop/check
# Sets up the pickup detection, and opens the initial menu if sneaking

tag @p[scores={wt.drop_coas=1..}] add wt.general_tool_thrown
tag @p[scores={wt.drop_coas=1..}] add wt.tool_thrown
execute if data storage worldtool:storage Temp.Item.tag.WorldTool{Tool:"general",Controls:"worldtool:limited",ToolState:"pos1"} as @p[scores={wt.drop_coas=1..}] at @s[scores={wt.sneak=1..}] run function worldtool:ui_general/click/load
execute if data storage worldtool:storage Temp.Item.tag.WorldTool{Tool:"general",Controls:"worldtool:limited",ToolState:"pos2"} as @p[scores={wt.drop_coas=1..}] at @s[scores={wt.sneak=1..}] run function worldtool:ui_general/click/load
function worldtool:use_tool/drop/give_back

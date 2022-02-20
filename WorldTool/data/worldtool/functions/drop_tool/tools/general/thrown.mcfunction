# Called by worldtool:drop_tool/check
# Sets up the pickup detection

tag @p[scores={wt.drop_coas=1..}] add wt.general_tool_thrown
execute if score #temp.sneaking worldtool matches 1 run function worldtool:ui_general/click/load
function worldtool:drop_tool/give_back

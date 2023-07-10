# Called by worldtool:use_tool/drop/check
# Opens the Brush Tool menu

tag @p[scores={wt.drop_coas=1..}] add wt.general_tool_thrown
function worldtool:use_tool/drop/give_back

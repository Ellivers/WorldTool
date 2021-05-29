# Called by worldtool:drop_tool/load
# Different actions depending on the tool

data remove storage worldtool:storage Temp
data modify storage worldtool:storage Temp.Item set from entity @s Item

# General tool
execute if data storage worldtool:storage Temp.Item.tag.WorldTool{Tool:"general",ToolState:"pick_block"} run function worldtool:drop_tool/give_back
execute if data storage worldtool:storage Temp.Item.tag.WorldTool{Tool:"general",ToolState:"clonepos"} run function worldtool:drop_tool/give_back
execute if data storage worldtool:storage Temp.Item.tag.WorldTool{Tool:"general",ToolState:"pos1"} run function worldtool:drop_tool/tools/general_pos1
execute if data storage worldtool:storage Temp.Item.tag.WorldTool{Tool:"general",ToolState:"pos2"} run function worldtool:drop_tool/tools/general_pos2

function #worldtool:addon/drop_tool

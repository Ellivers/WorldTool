# Called by worldtool:drop_tool/load
# Different actions depending on the tool

data remove storage worldtool:storage Temp
data modify storage worldtool:storage Temp.Item set from entity @s Item

# General Tool
execute if data storage worldtool:storage Temp.Item.tag.WorldTool{Tool:"general",ToolState:"pick_block"} run function worldtool:drop_tool/give_back
execute if data storage worldtool:storage Temp.Item.tag.WorldTool{Tool:"general",ToolState:"clonepos"} run function worldtool:drop_tool/give_back
execute if data storage worldtool:storage Temp.Item.tag.WorldTool{Tool:"general"} run function worldtool:drop_tool/tools/general/thrown

# Brush Tool
execute if data storage worldtool:storage Temp.Item.tag.WorldTool{Tool:"brush"} run function worldtool:drop_tool/tools/brush


# Shape Generation Tool
execute if data storage worldtool:storage Temp.Item.tag.WorldTool{Tool:"shapes"} run function worldtool:drop_tool/tools/shapes


function #worldtool:hooks/drop_tool

# Called by worldtool:use_tool/drop/load
# Different actions depending on the tool

data remove storage worldtool:storage Temp
data modify storage worldtool:storage Temp.Item set from entity @s Item

# General Tool
execute if data storage worldtool:storage Temp.Item.tag.WorldTool{Tool:"general",ToolState:"pick_block"} run function worldtool:use_tool/drop/give_back
execute if data storage worldtool:storage Temp.Item.tag.WorldTool{Tool:"general",ToolState:"clonepos"} run function worldtool:use_tool/drop/give_back
execute if data storage worldtool:storage Temp.Item.tag.WorldTool{Tool:"general"} run function worldtool:use_tool/drop/tools/general

# Brush Tool
execute if data storage worldtool:storage Temp.Item.tag.WorldTool{Tool:"brush"} run function worldtool:use_tool/drop/tools/brush


# Shape Generation Tool
execute if data storage worldtool:storage Temp.Item.tag.WorldTool{Tool:"shapes"} run function worldtool:use_tool/drop/tools/shapes


function #worldtool:hooks/use_tool/dropped

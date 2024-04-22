# Called by worldtool:use_tool/drop/load
# Different actions depending on the tool

data remove storage worldtool:storage Temp
function worldtool:use_tool/drop/get_item_data

# General Tool
execute if data storage worldtool:storage Temp.ItemData.WorldTool{Tool:"general"} run function worldtool:use_tool/drop/tools/general

# Brush Tool
execute if data storage worldtool:storage Temp.ItemData.WorldTool{Tool:"brush"} run function worldtool:use_tool/drop/tools/brush

# Shape Generation Tool
execute if data storage worldtool:storage Temp.ItemData.WorldTool{Tool:"shapes"} run function worldtool:use_tool/drop/tools/shapes


function #worldtool:hooks/use_tool/dropped

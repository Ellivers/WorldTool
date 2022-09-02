# Called by worldtool:use_shapes/load and worldtool:ui/queue/done

tag @s remove wt.menu.shapes.temp

data modify storage worldtool:storage Temp.Blocks set from storage worldtool:storage Processes[-1].Blocks
tag @s add wt.update_block.shape_tool
function worldtool:use_tool/update_block/load

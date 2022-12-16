# Called by worldtool:process_start/shapes/load and worldtool:ui/queue/done

execute if entity @s[tag=wt.menu.queue] run function worldtool:ui_shapes/menu

data modify storage worldtool:storage Temp.Blocks set from storage worldtool:storage Processes[-1].Blocks
tag @s add wt.update_block.shape_tool
function worldtool:process_start/common/block_from_data/from_process

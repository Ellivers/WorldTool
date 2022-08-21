tag @s remove wt.update_block.shape_tool
function worldtool:process_start/common/check/process

execute if score #success worldtool matches 1 run function worldtool:use_shapes/setup_progress_bar
execute if score #success worldtool matches 1 run function worldtool:process_start/start

# Called by worldtool:process_start/common/block_from_data/finish
# The final code before the process starts for real

tag @s remove wt.update_block.shape_tool
function worldtool:process_start/common/check/process

execute if score #success worldtool matches 1 if score $progressBar worldtool matches 1 run function worldtool:process_start/shapes/setup_progress_bar
execute if score #success worldtool matches 1 run function worldtool:process_start/start

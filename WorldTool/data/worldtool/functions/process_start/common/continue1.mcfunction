# Called by worldtool:ui/warning/size
# Continues starting the process

function worldtool:process_start/common/check_positions

execute if score #success worldtool matches 1 run function worldtool:process_start/common/check_process

execute if score #success worldtool matches 1 run function worldtool:process_start/common/start

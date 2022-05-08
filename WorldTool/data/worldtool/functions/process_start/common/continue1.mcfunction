# Called by worldtool:ui/warning/size
# Continues starting the process

function worldtool:process_start/common/check_positions

function #worldtool:addon/process_start/continue1
execute if score #success worldtool matches 1 run function worldtool:process_start/common/setup_process

execute if score #success worldtool matches 1 run function worldtool:process_start/common/check_process

execute if score #success worldtool matches 1 run function worldtool:process_start/common/start

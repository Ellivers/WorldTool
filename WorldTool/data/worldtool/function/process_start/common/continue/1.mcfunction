# Continue point 1 for starting the process

function #worldtool:hooks/process_start/common/continue1

execute if score #success worldtool matches 1 run function worldtool:process_start/common/setup_process

execute if score #success worldtool matches 1 run function worldtool:process_start/common/check/process

execute if score #success worldtool matches 1 run function worldtool:process_start/common/start

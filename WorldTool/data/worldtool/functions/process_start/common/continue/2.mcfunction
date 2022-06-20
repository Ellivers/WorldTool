# Called by worldtool:ui/queue/done
# Continue point 2 for starting the process

function worldtool:process_start/common/check/positions

execute if score #success worldtool matches 1 run function worldtool:process_start/common/start

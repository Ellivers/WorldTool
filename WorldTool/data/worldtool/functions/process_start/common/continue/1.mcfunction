# Called by worldtool:ui/warning/size
# Continue point 1 for starting the process

function worldtool:process_start/common/check/positions

function #worldtool:addon/process_start/continue1

execute if score #success worldtool matches 1 run function worldtool:process_start/common/setup_process
execute if score #success worldtool matches 1 if score $enableBackups worldtool matches 1 if score $playerdbAvailable worldtool matches 1 unless data storage worldtool:storage Temp.Process{Tags:["wt.read_only"]} run function worldtool:process_start/common/check/backup_slots

execute if score #success worldtool matches 1 run function worldtool:process_start/common/check/process

execute if score #success worldtool matches 1 run function worldtool:process_start/common/start

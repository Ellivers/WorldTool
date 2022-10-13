# Called by worldtool:process_start/common/setup_process and worldtool:process_start/shapes/setup_process
# Sets up the two backup processes

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[0]
data remove storage worldtool:storage Processes[0]

function worldtool:technical/save_load/remove_save_tags

data modify storage worldtool:storage Temp.AffectedArea set from storage worldtool:storage Temp.Process.AffectedArea
tag @s add wt.save_area.back_up
function worldtool:technical/save_load/setup_save_process

data modify storage worldtool:storage Processes prepend from storage worldtool:storage Temp.Process

data modify storage worldtool:storage Temp.AffectedArea set from storage worldtool:storage Temp.Process.AffectedArea
tag @s add wt.save_area.back_up
function worldtool:technical/save_load/setup_save_process

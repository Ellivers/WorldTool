# Called by worldtool:process_start/common/setup_process
# Sets up the backup process

function worldtool:ui_general/options/save_load_area/remove_save_tags

tag @s add wt.save_area.back_up

data remove storage worldtool:storage Processes[0]
function worldtool:ui_general/options/save_load_area/save_setup_process

data modify storage worldtool:storage Processes prepend from storage worldtool:storage Temp.Process

execute if data storage worldtool:storage Processes[0].AffectedArea run data modify storage worldtool:storage Processes[1].Positions.1 set from storage worldtool:storage Processes[0].AffectedArea.From
execute if data storage worldtool:storage Processes[0].AffectedArea run data modify storage worldtool:storage Processes[1].Positions.2 set from storage worldtool:storage Processes[0].AffectedArea.To

# Called by worldtool:ui_general/options/save_load/backup/done_check
# Sets up the two backup processes

function worldtool:ui_general/options/save_load/remove_save_tags

tag @s add wt.save_area.back_up
tag @s add wt.dont_reopen_menu

data remove storage worldtool:storage Processes[0]
function worldtool:ui_general/options/save_load/setup_save_process

data modify storage worldtool:storage Processes prepend from storage worldtool:storage Temp.Process

execute if data storage worldtool:storage Processes[0].AffectedArea run data modify storage worldtool:storage Processes[1].Positions.1 set from storage worldtool:storage Processes[0].AffectedArea.From
execute if data storage worldtool:storage Processes[0].AffectedArea run data modify storage worldtool:storage Processes[1].Positions.2 set from storage worldtool:storage Processes[0].AffectedArea.To

function worldtool:ui_general/options/save_load/setup_save_process

execute if data storage worldtool:storage Processes[1].AffectedArea run data modify storage worldtool:storage Processes[0].Positions.1 set from storage worldtool:storage Processes[1].AffectedArea.From
execute if data storage worldtool:storage Processes[1].AffectedArea run data modify storage worldtool:storage Processes[0].Positions.2 set from storage worldtool:storage Processes[1].AffectedArea.To

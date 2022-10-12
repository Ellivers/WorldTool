# Called by worldtool:process_start/common/setup_process and worldtool:process_start/shapes/setup_process
# Sets up the two backup processes

function worldtool:technical/save_load/remove_save_tags

tag @s add wt.save_area.back_up
tag @s add wt.dont_reopen_menu

data remove storage worldtool:storage Processes[0]

data remove storage worldtool:storage Temp.AffectedArea
data modify storage worldtool:storage Temp.AffectedArea set from storage worldtool:storage Temp.Process.AffectedArea

function worldtool:technical/save_load/setup_save_process

data modify storage worldtool:storage Processes prepend from storage worldtool:storage Temp.Process
data modify storage worldtool:storage Temp.AffectedArea set from storage worldtool:storage Temp.Process.AffectedArea

function worldtool:technical/save_load/setup_save_process

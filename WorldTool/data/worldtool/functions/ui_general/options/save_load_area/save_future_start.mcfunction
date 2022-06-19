# Called by worldtool:ui_general/options/save_load_area/load_setup_process
# Starts a save area process that will get the current area before it's undone

function worldtool:ui_general/options/save_load_area/save_setup_process

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[1]
data remove storage worldtool:storage Processes[1]
data modify storage worldtool:storage Processes prepend from storage worldtool:storage Temp.Process

function worldtool:ui_general/options/save_load_area/remove_save_tags

tag @s add wt.save_area.first_undo

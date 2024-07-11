# Called by worldtool:ui_general/options/menu
# Starts the copy process

function worldtool:technical/save_load/remove_save_tags
function worldtool:ui/remove_menu_tags

tag @s add wt.menu.copy_area
tag @s add wt.save_area.copy
tag @s add wt.setup.save_area

function worldtool:process_start/general/load

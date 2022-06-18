# Called by worldtool:ui_general/options/menu
# Starts the paste process

function worldtool:ui_general/options/save_load_area/remove_load_tags

tag @s add wt.load_area.paste
tag @s add wt.setup.load_area

function worldtool:process_start/common/load

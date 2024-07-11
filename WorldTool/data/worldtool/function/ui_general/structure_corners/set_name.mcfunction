# Called by worldtool:input_check/player
# Sets the structure name to the manually inputted value

function worldtool:database/get

function worldtool:input_data/get/structure_corners_name
kill @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1,limit=1]

function worldtool:database/save

function worldtool:ui_general/structure_corners/menu

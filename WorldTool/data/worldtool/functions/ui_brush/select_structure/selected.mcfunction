# Called by worldtool:input_check/player
# Selects a structure

function worldtool:input_data/get/structure_brush
kill @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,sort=nearest,limit=1]

function worldtool:ui_brush/check_tool

function worldtool:modify_item/brush_tool/set_structure

function worldtool:ui_brush/menu

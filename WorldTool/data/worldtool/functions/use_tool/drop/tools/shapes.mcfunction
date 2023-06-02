# Called by worldtool:use_tool/drop/check
# Opens the Shape Generation Tool menu

function worldtool:use_tool/drop/give_back
execute as @p[scores={wt.drop_coas=1..},limit=1] run function worldtool:ui_shapes/schedule_menu/load

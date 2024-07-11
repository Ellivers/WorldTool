# Called by worldtool:drop_tool/check
# Opens the Shape Generation Tool menu

function worldtool:drop_tool/give_back
execute as @p[scores={wt.drop_coas=1..},limit=1] run function worldtool:ui_shapes/schedule_menu/load

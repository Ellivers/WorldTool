# Called by worldtool:use_tool/drop/check
# Opens the Brush Tool menu

function worldtool:use_tool/drop/give_back
execute as @p[scores={wt.drop_coas=1..}] at @s run function worldtool:ui_brush/schedule_menu/load

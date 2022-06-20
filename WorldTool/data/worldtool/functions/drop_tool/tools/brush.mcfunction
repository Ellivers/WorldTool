# Called by worldtool:drop_tool/check
# Opens the brush menu

function worldtool:drop_tool/give_back
execute as @p[scores={wt.drop_coas=1..}] at @s run function worldtool:ui_brush/menu

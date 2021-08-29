# Called by worldtool:drop_tool/check
# Opens the brush menu

function worldtool:drop_tool/give_back
execute as @a[scores={wt.drop_coas=1..},limit=1] at @s run function worldtool:ui_shapes/main

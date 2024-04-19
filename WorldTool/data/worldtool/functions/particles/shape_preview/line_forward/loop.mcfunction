# Called recursively and by worldtool:particles/shape_preview/line_forward/load
# Draws a line forwards

scoreboard players add #temp worldtool 1

function worldtool:particles/colors/shape
execute unless score #temp worldtool >= #radius_temp worldtool positioned ^ ^ ^1 run function worldtool:particles/shape_preview/line_forward/loop

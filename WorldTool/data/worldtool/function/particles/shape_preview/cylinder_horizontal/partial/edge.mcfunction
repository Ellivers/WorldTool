# Called recursively and by worldtool:particles/shape_preview/cylinder_horizontal/partial/main
# Draws a line forwards, then "up"

scoreboard players add #temp2 worldtool 1

function worldtool:particles/colors/shape
execute if score #temp2 worldtool >= #radius_temp worldtool positioned ^ ^ ^1 run function worldtool:particles/shape_preview/line_horizontal/load
execute unless score #temp2 worldtool >= #radius_temp worldtool positioned ^ ^ ^1 run function worldtool:particles/shape_preview/cylinder_horizontal/partial/edge

# Called recursively and by worldtool:particles/shape_preview/cone_vertical/partial/main
# Draws a line forwards, then to the tip

scoreboard players add #temp2 worldtool 1

function worldtool:particles/colors/shape
execute if score #temp2 worldtool >= #radius_temp worldtool positioned ^ ^ ^1 run function worldtool:particles/shape_preview/cone_vertical/line/load
execute unless score #temp2 worldtool >= #radius_temp worldtool positioned ^ ^ ^1 run function worldtool:particles/shape_preview/cone_vertical/partial/edge

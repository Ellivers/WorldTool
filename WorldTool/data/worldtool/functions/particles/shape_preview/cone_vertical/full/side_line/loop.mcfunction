# Called recursively and by worldtool:particles/shape_preview/cone_vertical/full/side_line/load
# Raycasts until it's vertical line time

scoreboard players add #temp4 worldtool 1
execute if score #temp4 worldtool >= #radius_temp worldtool positioned ^ ^ ^1 run function worldtool:particles/shape_preview/cone_vertical/line/load
execute unless score #temp4 worldtool >= #radius_temp worldtool positioned ^ ^ ^1 run function worldtool:particles/shape_preview/cone_vertical/full/side_line/loop

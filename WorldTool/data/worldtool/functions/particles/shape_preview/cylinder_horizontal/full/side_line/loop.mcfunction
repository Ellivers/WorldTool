# Called recursively and by worldtool:particles/shape_preview/cylinder_up/full/side_line/load
# Raycasts until it's line time

scoreboard players add #temp3 worldtool 1
execute if score #temp3 worldtool >= #radius_temp worldtool positioned ^ ^ ^1 run function worldtool:particles/shape_preview/line_horizontal/load
execute unless score #temp3 worldtool >= #radius_temp worldtool positioned ^ ^ ^1 run function worldtool:particles/shape_preview/cylinder_horizontal/full/side_line/loop

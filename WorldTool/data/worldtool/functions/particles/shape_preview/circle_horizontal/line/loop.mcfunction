# Called recursively and by worldtool:particles/shape_preview/circle_horizontal/line/load
# Raycasts until it's particle time

scoreboard players add #temp worldtool 1
execute if score #temp worldtool >= #radius_temp worldtool positioned ^ ^ ^1 run function worldtool:particles/colors/shape
execute unless score #temp worldtool >= #radius_temp worldtool positioned ^ ^ ^1 run function worldtool:particles/shape_preview/circle_horizontal/line/loop

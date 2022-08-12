# Called recursively and by worldtool:particles/shape_preview/cylinder_horizontal/partial/main
# Draws a line forwards, then "up"

scoreboard players add #temp2 worldtool 1

particle minecraft:dust 0.671 0.161 0.875 1.5 ~ ~ ~ 0 .3 0 2 3 force @a[tag=wt.shape_preview_temp]
execute if score #temp2 worldtool >= #radius_temp worldtool positioned ^ ^ ^1 run function worldtool:particles/shape_preview/line_horizontal/load
execute unless score #temp2 worldtool >= #radius_temp worldtool positioned ^ ^ ^1 run function worldtool:particles/shape_preview/cylinder_horizontal/partial/edge

# Called recursively and by worldtool:particles/shape_preview/circle_horizontal/line/load
# Raycasts until it's particle time

scoreboard players add #temp worldtool 1
execute if score #temp worldtool >= #radius_temp worldtool positioned ^ ^ ^1 run particle minecraft:dust 0.671 0.161 0.875 1.5 ~ ~ ~ 0 .3 0 2 3 force @a[tag=wt.shape_preview_temp]
execute unless score #temp worldtool >= #radius_temp worldtool positioned ^ ^ ^1 run function worldtool:particles/shape_preview/circle_horizontal/line/loop

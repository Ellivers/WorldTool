# Called recursively

scoreboard players add #temp3 worldtool 1
execute if score #temp3 worldtool >= #length_temp worldtool run function worldtool:particles/shape_preview/circle_vertical/load
execute unless score #temp3 worldtool >= #length_temp worldtool positioned ^1 ^ ^ run function worldtool:particles/shape_preview/cylinder_horizontal/full/end_circle

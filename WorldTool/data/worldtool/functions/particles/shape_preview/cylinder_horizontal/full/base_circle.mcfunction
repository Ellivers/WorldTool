# Called recursively and by worldtool:particles/shape_preview/cylinder_horizontal/full/main
# Rotates around the X axis to draw a circle

scoreboard players add #temp2 worldtool 5

execute rotated ~ ~5 run function worldtool:particles/shape_preview/circle_horizontal/line/load

scoreboard players operation #90deg worldtool = #temp2 worldtool
scoreboard players operation #90deg worldtool %= #90 worldtool
execute if score #90deg worldtool matches 0 rotated ~ ~5 run function worldtool:particles/shape_preview/cylinder_horizontal/full/side_line/load

execute unless score #temp2 worldtool >= #degrees_temp worldtool rotated ~ ~5 run function worldtool:particles/shape_preview/cylinder_horizontal/full/base_circle

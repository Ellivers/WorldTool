# Called recursively and by worldtool:particles/shape_preview/cylinder_horizontal/partial/main
# Rotates around the X axis to draw a circle

scoreboard players add #temp3 worldtool 5

function worldtool:particles/shape_preview/circle_horizontal/line/load
execute if score #temp3 worldtool >= #degrees_temp worldtool rotated ~ ~5 run function worldtool:particles/shape_preview/cylinder_horizontal/partial/edge
execute unless score #temp3 worldtool >= #degrees_temp worldtool rotated ~ ~5 run function worldtool:particles/shape_preview/cylinder_horizontal/partial/base_circle

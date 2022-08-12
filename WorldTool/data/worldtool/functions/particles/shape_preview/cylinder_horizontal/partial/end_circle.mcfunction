# Called recursively and by worldtool:particles/shape_preview/cylinder_horizontal/partial/main
# Rotates around the X axis to draw a circle

scoreboard players add #temp2 worldtool 5

function worldtool:particles/shape_preview/circle_horizontal/line/load
execute if score #temp2 worldtool >= #degrees_temp worldtool rotated ~ ~5 run function worldtool:particles/shape_preview/line_forward/load
execute unless score #temp2 worldtool >= #degrees_temp worldtool rotated ~ ~5 run function worldtool:particles/shape_preview/cylinder_horizontal/partial/end_circle

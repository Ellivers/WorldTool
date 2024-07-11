# Called recursively and by worldtool:particles/shape_preview/cylinder_up/full/main
# Rotates around the Y axis to draw a circle

scoreboard players add #temp2 worldtool 5

tp @s ~ ~ ~ ~5 ~

execute at @s run function worldtool:particles/shape_preview/circle_horizontal/line/load

scoreboard players operation #90deg worldtool = #temp2 worldtool
scoreboard players operation #90deg worldtool %= #90 worldtool
execute if score #90deg worldtool matches 0 at @s run function worldtool:particles/shape_preview/cylinder_up/full/side_line/load

execute unless score #temp2 worldtool >= #degrees_temp worldtool at @s run function worldtool:particles/shape_preview/cylinder_up/full/bottom_circle

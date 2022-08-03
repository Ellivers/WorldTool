# Called recursively and by worldtool:particles/shape_preview/cylinder_vertical/partial/main
# Rotates around the Y axis to draw a circle

scoreboard players add #temp2 worldtool 1

tp @s ~ ~ ~ ~1 ~
scoreboard players operation #shouldRun worldtool = #temp2 worldtool
scoreboard players operation #shouldRun worldtool %= #2 worldtool
execute if score #shouldRun worldtool matches 0 at @s run function worldtool:particles/shape_preview/circle_horizontal/line/load

execute unless score #temp2 worldtool >= #degrees_temp worldtool at @s run function worldtool:particles/shape_preview/cylinder_vertical/partial/bottom_circle

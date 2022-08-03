# Called recursively and by worldtool:particles/shape_preview/circle_horizontal/rotation/load
# Rotates around the Y axis to draw a circle

scoreboard players add #temp2 worldtool 5

tp @s ~ ~ ~ ~5 ~

execute at @s run function worldtool:particles/shape_preview/circle_horizontal/line/load
execute unless score #temp2 worldtool >= #degrees_temp worldtool at @s run function worldtool:particles/shape_preview/circle_horizontal/rotation/loop

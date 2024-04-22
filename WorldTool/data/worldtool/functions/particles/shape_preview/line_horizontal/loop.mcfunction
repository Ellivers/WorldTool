# Called recursively and by worldtool:particles/shape_preview/line_horizontal/load

scoreboard players add #temp worldtool 1

function worldtool:particles/colors/shape
execute unless score #temp worldtool >= #length_temp worldtool positioned ^1 ^ ^ run function worldtool:particles/shape_preview/line_horizontal/loop

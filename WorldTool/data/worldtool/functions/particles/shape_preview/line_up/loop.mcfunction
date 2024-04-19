# Called recursively and by worldtool:particles/shape_preview/line_up/load

scoreboard players add #temp3 worldtool 1

function worldtool:particles/colors/shape
execute unless score #temp3 worldtool >= #length_temp worldtool positioned ^ ^1 ^ run function worldtool:particles/shape_preview/line_up/loop

# Called recursively

scoreboard players add #temp3 worldtool 1
function worldtool:particles/colors/shape
execute if score #temp3 worldtool >= #length_temp worldtool run function worldtool:particles/shape_preview/cylinder_up/partial/top_part
execute unless score #temp3 worldtool >= #length_temp worldtool positioned ^ ^-1 ^ run function worldtool:particles/shape_preview/cylinder_down/partial/go_down

# Called recursively

scoreboard players add #temp3 worldtool 1
particle minecraft:dust 0.671 0.161 0.875 1.5 ~ ~ ~ 0 .3 0 2 3 force @a[tag=wt.shape_preview_temp]
execute if score #temp3 worldtool >= #length_temp worldtool positioned ^1 ^ ^ run function worldtool:particles/shape_preview/cylinder_horizontal/partial/end_part
execute unless score #temp3 worldtool >= #length_temp worldtool positioned ^1 ^ ^ run function worldtool:particles/shape_preview/cylinder_horizontal/partial/go_to_end

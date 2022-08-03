# Called recursively and by worldtool:particles/shape_preview/cylinder_vertical/partial/slice_edge/horizontal_line

scoreboard players add #temp worldtool 1

particle minecraft:dust 0.671 0.161 0.875 1.5 ~ ~ ~ 0 .3 0 2 3 force @a[tag=wt.shape_preview_temp]
execute unless score #temp worldtool >= #radius_temp worldtool run function worldtool:particles/shape_preview/cylinder_vertical/partial/slice_edge/vertical_line

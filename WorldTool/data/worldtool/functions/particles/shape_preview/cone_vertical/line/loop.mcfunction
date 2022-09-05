# Called recursively and by worldtool:particles/shape_preview/cone_vertical/line/load
# Draws a line to the tip of the cone

scoreboard players add #temp worldtool 1

particle minecraft:dust 0.671 0.161 0.875 1.5 ~ ~ ~ 0 .3 0 2 3 force @a[tag=wt.shape_preview_temp]
execute unless score #temp worldtool >= #halfStepDistance worldtool positioned ^ ^ ^.5 run function worldtool:particles/shape_preview/cone_vertical/line/loop

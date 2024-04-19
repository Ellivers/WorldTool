# Called recursively and by worldtool:particles/shape_preview/cone_vertical/line/load
# Draws a line to the tip of the cone

scoreboard players add #temp worldtool 1

function worldtool:particles/colors/shape
execute unless score #temp worldtool >= #halfStepDistance worldtool positioned ^ ^ ^.5 run function worldtool:particles/shape_preview/cone_vertical/line/loop

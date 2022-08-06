# Called by various functions

scoreboard players set #temp2 worldtool 0
function worldtool:particles/shape_preview/circle_horizontal/rotation/loop

execute at @s run function worldtool:particles/shape_preview/circle_horizontal/line/load

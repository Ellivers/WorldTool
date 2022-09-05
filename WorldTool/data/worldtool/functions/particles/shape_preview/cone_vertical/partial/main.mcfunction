# Called by worldtool:particles/cone_vertical/load

scoreboard players set #temp2 worldtool 0
function worldtool:particles/shape_preview/cone_vertical/partial/edge

function worldtool:particles/shape_preview/circle_horizontal/rotation/load

scoreboard players set #temp2 worldtool 0
execute at @s run function worldtool:particles/shape_preview/cone_vertical/partial/edge

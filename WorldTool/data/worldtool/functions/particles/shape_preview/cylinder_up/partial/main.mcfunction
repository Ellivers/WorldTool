# Called by worldtool:particles/cylinder_up/load

scoreboard players set #temp2 worldtool 0
function worldtool:particles/shape_preview/cylinder_up/partial/edge

function worldtool:particles/shape_preview/circle_horizontal/rotation/load

scoreboard players set #temp2 worldtool 0
execute at @s run function worldtool:particles/shape_preview/cylinder_up/partial/edge

tp ~ ~ ~

scoreboard players set #temp3 worldtool 0
function worldtool:particles/shape_preview/cylinder_up/partial/go_up

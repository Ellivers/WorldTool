# Called by worldtool:particles/cylinder_down/load

scoreboard players set #temp2 worldtool 0
function worldtool:particles/shape_preview/cylinder_down/partial/edge

function worldtool:particles/shape_preview/circle_horizontal/rotation/load

scoreboard players set #temp2 worldtool 0
execute at @s run function worldtool:particles/shape_preview/cylinder_down/partial/edge

tp ~ ~ ~

scoreboard players set #temp3 worldtool 0
function worldtool:particles/shape_preview/cylinder_down/partial/go_down

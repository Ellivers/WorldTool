# Called by worldtool:particles/shape_preview/cylinder_up/partial/go_up

scoreboard players set #temp worldtool 0
function worldtool:particles/shape_preview/cylinder_up/partial/horizontal_line

function worldtool:particles/shape_preview/circle_horizontal/rotation/load

scoreboard players set #temp worldtool 0
execute at @s run function worldtool:particles/shape_preview/cylinder_up/partial/horizontal_line

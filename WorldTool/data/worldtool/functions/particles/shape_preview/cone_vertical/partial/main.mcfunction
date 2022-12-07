# Called by worldtool:particles/cone_vertical/load

execute if entity @s[tag=wt.shape.cone.up] run function worldtool:particles/shape_preview/line_up/load
execute if entity @s[tag=wt.shape.cone.down] run function worldtool:particles/shape_preview/line_down/load

scoreboard players set #temp2 worldtool 0
function worldtool:particles/shape_preview/cone_vertical/partial/edge

function worldtool:particles/shape_preview/circle_horizontal/rotation/load

scoreboard players set #temp2 worldtool 0
execute at @s run function worldtool:particles/shape_preview/cone_vertical/partial/edge

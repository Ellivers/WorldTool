# Called by worldtool:particles/shape_preview/cylinder_vertical/load

scoreboard players set #temp2 worldtool 0
function worldtool:particles/shape_preview/cylinder_vertical/full/bottom_circle

scoreboard players set #temp3 worldtool 0
function worldtool:particles/shape_preview/cylinder_vertical/full/top_circle

tp ~ ~ ~

tag @a[tag=wt.shape_preview_temp] remove wt.shape_preview_temp

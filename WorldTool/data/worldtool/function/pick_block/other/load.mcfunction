# Called by worldtool:use_tool/ray_hit/load
# Picks a block

function worldtool:technical/common/get_dim_top/load
function worldtool:technical/common/is_inside_world

execute if score #success worldtool matches 1 run clone ~ ~ ~ ~ ~ ~ 27450 2 19

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute if score #success worldtool matches 1 as fe66c968-8ef7-4f14-b6e2-44faa2083170 at @s run function worldtool:pick_block/other/attempt1

# Called by various functions
# Spawns an entity for detecting blocks (primary and secondary)

scoreboard players operation #ID_temp worldtool = @s wt.ID

function worldtool:technical/common/get_dim_bottom/load
execute as fe66c968-8ef7-4f14-b6e2-44faa2083170 at @s run function worldtool:ui/start_input/summon/both

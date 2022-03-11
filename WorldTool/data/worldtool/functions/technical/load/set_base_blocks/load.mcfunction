# Called by worldtool:technical/load/init_dimensions and potentially by users
# Starts the base block setting of the current dimension

execute positioned 2 ~ 13 run function worldtool:technical/common/get_dim_bottom/load

execute as fe66c968-8ef7-4f14-b6e2-44faa2083170 at @s run function worldtool:technical/load/set_base_blocks/set

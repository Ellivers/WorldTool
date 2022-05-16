# Called recursively and by worldtool:technical/common/get_dim_top/load
# Finds the highest block in the current dimension

execute positioned ~ ~1 ~ run function worldtool:technical/common/is_inside_world
execute if score #success worldtool matches 0 run function worldtool:technical/common/get_dim_top/done
execute if score #success worldtool matches 1 positioned ~ ~1 ~ run function worldtool:technical/common/get_dim_top/raycast

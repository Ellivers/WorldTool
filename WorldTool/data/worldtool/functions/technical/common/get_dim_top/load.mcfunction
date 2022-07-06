# Finds the highest block in the current dimension

function worldtool:technical/common/is_inside_world
execute if score #success worldtool matches 0 run function worldtool:ui/error/outside_world
execute if score #success worldtool matches 1 run function worldtool:technical/common/get_dim_top/raycast

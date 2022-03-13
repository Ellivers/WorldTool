# Scheduled by itself and called by worldtool:technical/load
# Waits for the chunk at 27450 19 to load properly

scoreboard players add #loadWaitTime worldtool 1

execute positioned 27450 0 19 run function worldtool:technical/common/is_inside_world

execute if score #success worldtool matches 1.. run function worldtool:technical/load/init_dimensions
execute if score #success worldtool matches 0 unless score #loadWaitTime worldtool matches 8.. run schedule function worldtool:technical/load/wait_for_load 5t

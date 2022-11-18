# Scheduled by itself and called by worldtool:technical/load
# Waits for the chunk at 27450 19 in the end to load properly

scoreboard players add #theEndLoadWaitTime worldtool 1

execute in minecraft:the_end positioned 27450 0 19 run function worldtool:technical/common/is_inside_world

execute if score #success worldtool matches 1.. in minecraft:the_end run function worldtool:technical/load/set_base_blocks
execute if score #success worldtool matches 0 unless score #theEndLoadWaitTime worldtool matches 10.. run schedule function worldtool:technical/load/wait_for_dimension/the_end 5t

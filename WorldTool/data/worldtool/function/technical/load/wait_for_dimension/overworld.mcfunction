# Scheduled by itself and called by worldtool:technical/load
# Waits for the chunk at 27450 19 in the overworld to load properly

scoreboard players add #overworldLoadWaitTime worldtool 1

execute in minecraft:overworld positioned 27450 0 19 run function worldtool:technical/common/is_inside_world

execute if score #success worldtool matches 1.. in minecraft:overworld run function worldtool:technical/load/set_base_blocks
execute if score #success worldtool matches 0 unless score #overworldLoadWaitTime worldtool matches 10.. run schedule function worldtool:technical/load/wait_for_dimension/overworld 5t

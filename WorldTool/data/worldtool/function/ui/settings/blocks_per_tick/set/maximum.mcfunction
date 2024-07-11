# Called recursively and by worldtool:ui/settings/blocks_per_tick/menu
# Sets the blocks per tick for all processes to the maximum preset value

scoreboard players add #temp2 worldtool 1

data modify storage worldtool:storage BlocksPerTick.Processes[0].Value set value 2147483647

data modify storage worldtool:storage BlocksPerTick.Processes append from storage worldtool:storage BlocksPerTick.Processes[0]
data remove storage worldtool:storage BlocksPerTick.Processes[0]

execute unless score #temp2 worldtool >= #temp worldtool run function worldtool:ui/settings/blocks_per_tick/set/maximum

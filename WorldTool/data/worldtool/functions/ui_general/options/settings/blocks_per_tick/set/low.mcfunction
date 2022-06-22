# Called recursively and by worldtool:ui_general/options/settings/blocks_per_tick/menu
# Sets the blocks per tick for all processes to the low preset value

scoreboard players add #temp2 worldtool 1

data modify storage worldtool:storage BlocksPerTick.Processes[0].Value set from storage worldtool:storage BlocksPerTick.Processes[0].Presets.Low

data modify storage worldtool:storage BlocksPerTick.Processes append from storage worldtool:storage BlocksPerTick.Processes[0]
data remove storage worldtool:storage BlocksPerTick.Processes[0]

execute unless score #temp2 worldtool >= #temp worldtool run function worldtool:ui_general/options/settings/blocks_per_tick/set/low

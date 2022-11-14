# Called by various functions
# The process functionality for command block chain list
# Follows a command block chain

scoreboard players add #blocksChecked worldtool 1

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool run data modify storage worldtool:storage Processes[-1].Output.CommandLists[-1] append from block ~ ~ ~ Command

# Move the process entity
execute if block ~ ~ ~ #worldtool:command_blocks[facing=east] if block ~1 ~ ~ minecraft:chain_command_block unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/command_list/follow/x
execute if block ~ ~ ~ #worldtool:command_blocks[facing=west] if block ~-1 ~ ~ minecraft:chain_command_block unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/command_list/follow/-x

execute if block ~ ~ ~ #worldtool:command_blocks[facing=south] if block ~ ~ ~1 minecraft:chain_command_block unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/command_list/follow/z
execute if block ~ ~ ~ #worldtool:command_blocks[facing=north] if block ~ ~ ~-1 minecraft:chain_command_block unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/command_list/follow/-z

execute if block ~ ~ ~ #worldtool:command_blocks[facing=up] if block ~ ~1 ~ minecraft:chain_command_block unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/command_list/follow/y
execute if block ~ ~ ~ #worldtool:command_blocks[facing=down] if block ~ ~-1 ~ minecraft:chain_command_block unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/command_list/follow/-y

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/command_list/follow/done

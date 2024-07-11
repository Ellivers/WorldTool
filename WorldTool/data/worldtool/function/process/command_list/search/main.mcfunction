# Called by various functions
# The process functionality for command block chain list
# Searches for a command block chain

scoreboard players add #blocksChecked worldtool 1

execute if block ~ ~ ~ #worldtool:command_block_chain_start run function worldtool:process/command_list/search/found

# Move the process entity
function worldtool:process/command_list/search/move

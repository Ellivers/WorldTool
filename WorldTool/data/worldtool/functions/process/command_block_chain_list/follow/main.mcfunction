# Called by various functions
# The process functionality for PROCESS NAME

scoreboard players add #blocksChecked worldtool 1

# PROCESS-SPECIFIC COMMANDS HERE

# Move the process entity
execute if score #processPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/command_block_chain_list/follow/x
execute if score #processPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/command_block_chain_list/follow/-x

execute if score #processPosX worldtool = #pos2x worldtool if score #processPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/command_block_chain_list/follow/z
execute if score #processPosX worldtool = #pos2x worldtool if score #processPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/command_block_chain_list/follow/-z

execute if score #processPosX worldtool = #pos2x worldtool if score #processPosZ worldtool = #pos2z worldtool if score #processPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/command_block_chain_list/follow/y
execute if score #processPosX worldtool = #pos2x worldtool if score #processPosZ worldtool = #pos2z worldtool if score #processPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/command_block_chain_list/follow/-y

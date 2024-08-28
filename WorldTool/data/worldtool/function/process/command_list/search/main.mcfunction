# Called by various functions
# The process functionality for command block chain list
# Searches for a command block chain

scoreboard players add #blocksChecked worldtool 1

execute if score #hasMoved worldtool matches 0 unless score #tempDir worldtool matches 0 run function worldtool:process/correct_pos
execute store result score #hasMoved worldtool run scoreboard players set #tempDir worldtool 0
scoreboard players operation #prevProcessPosX worldtool = #processPosX worldtool

execute at @s if block ~ ~ ~ #worldtool:command_block_chain_start run function worldtool:process/command_list/search/found

# Move the process entity
function worldtool:process/command_list/search/move

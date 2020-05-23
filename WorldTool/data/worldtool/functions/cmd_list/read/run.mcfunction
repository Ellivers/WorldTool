scoreboard players add #blockschecked worldtool 1
scoreboard players add #cmdblockschecked worldtool 1

execute if block ~ ~ ~ minecraft:chain_command_block unless score #cmdblockschecked worldtool matches 99999.. run function worldtool:cmd_list/read/write
execute if block ~ ~ ~ minecraft:chain_command_block if score #cmdblockschecked worldtool matches 99999.. run function worldtool:aligned_done
execute unless block ~ ~ ~ minecraft:chain_command_block run function worldtool:aligned_done

#If #blockschecked's worldtool score isn't more than a certain number (default: 4000) move the x, y and z coordinates
execute unless score #cmdblockschecked worldtool matches 99999.. if block ~ ~ ~ minecraft:chain_command_block[facing=down] run function worldtool:cmd_list/read/-y
execute unless score #cmdblockschecked worldtool matches 99999.. if block ~ ~ ~ minecraft:chain_command_block[facing=up] run function worldtool:cmd_list/read/y
execute unless score #cmdblockschecked worldtool matches 99999.. if block ~ ~ ~ minecraft:chain_command_block[facing=west] run function worldtool:cmd_list/read/-x
execute unless score #cmdblockschecked worldtool matches 99999.. if block ~ ~ ~ minecraft:chain_command_block[facing=east] run function worldtool:cmd_list/read/x
execute unless score #cmdblockschecked worldtool matches 99999.. if block ~ ~ ~ minecraft:chain_command_block[facing=north] run function worldtool:cmd_list/read/-z
execute unless score #cmdblockschecked worldtool matches 99999.. if block ~ ~ ~ minecraft:chain_command_block[facing=south] run function worldtool:cmd_list/read/z

#Schedules a function if #blockschecked's worldtool score is more or equals to a certain number (default: 4000) (check the function for explanation of why it's here)
execute unless block ~ ~ ~ #worldtool:cmd_block_chain_start if score #blockschecked worldtool >= $blocksPerTick worldtool run schedule function worldtool:load2_fill 1t
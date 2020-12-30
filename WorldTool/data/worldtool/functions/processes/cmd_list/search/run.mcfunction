scoreboard players add #blockschecked worldtool 1

execute if block ~ ~ ~ #worldtool:cmd_block_chain_start run function worldtool:processes/cmd_list/read/start

#If #blockschecked's worldtool score isn't more than a certain number (default: 4000) move the x, y and z coordinates
execute unless block ~ ~ ~ #worldtool:cmd_block_chain_start if score $drawingposX worldtool < $pos2x worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:processes/cmd_list/search/x
execute unless block ~ ~ ~ #worldtool:cmd_block_chain_start if score $drawingposX worldtool > $pos2x worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:processes/cmd_list/search/-x

execute unless block ~ ~ ~ #worldtool:cmd_block_chain_start if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool < $pos2y worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:processes/cmd_list/search/y
execute unless block ~ ~ ~ #worldtool:cmd_block_chain_start if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool > $pos2y worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:processes/cmd_list/search/-y

execute unless block ~ ~ ~ #worldtool:cmd_block_chain_start if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool < $pos2z worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:processes/cmd_list/search/z
execute unless block ~ ~ ~ #worldtool:cmd_block_chain_start if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool > $pos2z worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:processes/cmd_list/search/-z

#Schedules a function if #blockschecked's worldtool score is more or equals to a certain number (default: 4000) (check the function for explanation of why it's here)
execute unless block ~ ~ ~ #worldtool:cmd_block_chain_start if score #blockschecked worldtool >= $blocksPerTick worldtool run schedule function worldtool:load_process/load2_fill 1t
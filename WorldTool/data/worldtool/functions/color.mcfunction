scoreboard players add #blockschecked worldtool 1

execute if block ~ ~ ~ #worldtool:colorable run function worldtool:brush/brushes/color/main

#If #blockschecked's worldtool score isn't more than a certain number (default: 4000) move the x, y and z coordinates
execute if score $drawingposX worldtool < $pos2x worldtool unless score #blockschecked worldtool >= $coloredBlocksPerTick worldtool run function worldtool:color/x
execute if score $drawingposX worldtool > $pos2x worldtool unless score #blockschecked worldtool >= $coloredBlocksPerTick worldtool run function worldtool:color/-x

execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool < $pos2y worldtool unless score #blockschecked worldtool >= $coloredBlocksPerTick worldtool run function worldtool:color/y
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool > $pos2y worldtool unless score #blockschecked worldtool >= $coloredBlocksPerTick worldtool run function worldtool:color/-y

execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool < $pos2z worldtool unless score #blockschecked worldtool >= $coloredBlocksPerTick worldtool run function worldtool:color/z
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool > $pos2z worldtool unless score #blockschecked worldtool >= $coloredBlocksPerTick worldtool run function worldtool:color/-z

#Schedules a function if #blockschecked's worldtool score is more or equals to a certain number (default: 4000) (check the function for explanation of why it's here)
execute if score #blockschecked worldtool >= $coloredBlocksPerTick worldtool run schedule function worldtool:load_function/load2_fill 1t
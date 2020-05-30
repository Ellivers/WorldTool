scoreboard players add #blockschecked worldtool 1

execute if score $drawingposZ worldtool = $pos2z worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:place_block
execute if score $drawingposZ worldtool = $pos1z worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:place_block

execute if score $drawingposY worldtool = $pos2y worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:place_block
execute if score $drawingposY worldtool = $pos1y worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:place_block

execute if score $drawingposX worldtool = $pos2x worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:place_block
execute if score $drawingposX worldtool = $pos1x worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:place_block

execute if entity @s[tag=inner_block] unless score $drawingposZ worldtool = $pos2z worldtool unless score $drawingposZ worldtool = $pos1z worldtool unless score $drawingposY worldtool = $pos2y worldtool unless score $drawingposY worldtool = $pos1y worldtool unless score $drawingposX worldtool = $pos2x worldtool unless score $drawingposX worldtool = $pos1x worldtool unless blocks ~ ~ ~ ~ ~ ~ 2 1 13 all run function worldtool:place_block_v2

#If #blockschecked's worldtool score isn't more than a certain number (default: 4000) move the x, y and z coordinates
execute if score $drawingposX worldtool < $pos2x worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:hollow/x
execute if score $drawingposX worldtool > $pos2x worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:hollow/-x

execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool < $pos2y worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:hollow/y
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool > $pos2y worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:hollow/-y

execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool < $pos2z worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:hollow/z
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool > $pos2z worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:hollow/-z

#Schedules a function if #blockschecked's worldtool score is more or equals to a certain number (default: 4000) (check the function for explanation of why it's here)
execute if score #blockschecked worldtool >= $blocksPerTick worldtool run schedule function worldtool:load2_fill 1t
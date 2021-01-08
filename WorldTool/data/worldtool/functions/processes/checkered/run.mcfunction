scoreboard players add #blockschecked worldtool 1

execute if score $checkered worldtool matches 0 if entity @s[tag=!replacefill,tag=!replacefill_reversed] unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:block_place/place_block
execute if score $checkered worldtool matches 0 if entity @s[tag=replacefill] unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all if blocks ~ ~ ~ ~ ~ ~ 2 1 13 all run function worldtool:block_place/place_block
execute if score $checkered worldtool matches 0 if entity @s[tag=replacefill_reversed] unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all unless blocks ~ ~ ~ ~ ~ ~ 2 1 13 all run function worldtool:block_place/place_block

#If #blockschecked's worldtool score isn't more than a certain number (default: 4000) move the x, y and z coordinates
execute if score $drawingposX worldtool < $pos2x worldtool unless score #blockschecked worldtool >= $checkeredBlocksPerTick worldtool run function worldtool:processes/checkered/x
execute if score $drawingposX worldtool > $pos2x worldtool unless score #blockschecked worldtool >= $checkeredBlocksPerTick worldtool run function worldtool:processes/checkered/-x

execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool < $pos2y worldtool unless score #blockschecked worldtool >= $checkeredBlocksPerTick worldtool run function worldtool:processes/checkered/y
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool > $pos2y worldtool unless score #blockschecked worldtool >= $checkeredBlocksPerTick worldtool run function worldtool:processes/checkered/-y

execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool < $pos2z worldtool unless score #blockschecked worldtool >= $checkeredBlocksPerTick worldtool run function worldtool:processes/checkered/z
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool > $pos2z worldtool unless score #blockschecked worldtool >= $checkeredBlocksPerTick worldtool run function worldtool:processes/checkered/-z

#Schedules a function if #blockschecked's worldtool score is more or equals to a certain number (default: 4000) (check the function for explanation of why it's here)
#execute if score #blockschecked worldtool >= $checkeredBlocksPerTick worldtool run schedule function worldtool:load_process/load2_fill 1t
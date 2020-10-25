scoreboard players add #blockschecked worldtool 1

# All combinations
execute if score $drawingposX worldtool = $pos1x worldtool if score $drawingposZ worldtool = $pos1z worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:block_place/place_block
execute if score $drawingposX worldtool = $pos1x worldtool if score $drawingposZ worldtool = $pos2z worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:block_place/place_block
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposZ worldtool = $pos1z worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:block_place/place_block
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposZ worldtool = $pos2z worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:block_place/place_block

execute if score $drawingposX worldtool = $pos1x worldtool if score $drawingposY worldtool = $pos1y worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:block_place/place_block
execute if score $drawingposX worldtool = $pos1x worldtool if score $drawingposY worldtool = $pos2y worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:block_place/place_block
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos1y worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:block_place/place_block
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:block_place/place_block

execute if score $drawingposY worldtool = $pos1y worldtool if score $drawingposZ worldtool = $pos1z worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:block_place/place_block
execute if score $drawingposY worldtool = $pos1y worldtool if score $drawingposZ worldtool = $pos2z worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:block_place/place_block
execute if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool = $pos1z worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:block_place/place_block
execute if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool = $pos2z worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:block_place/place_block

# If #blockschecked's worldtool score isn't more than a certain number (default: 3200) move the x, y and z coordinates
execute if score $drawingposX worldtool < $pos2x worldtool unless score #blockschecked worldtool >= $outlinedBlocksPerTick worldtool run function worldtool:fill_outline/x
execute if score $drawingposX worldtool > $pos2x worldtool unless score #blockschecked worldtool >= $outlinedBlocksPerTick worldtool run function worldtool:fill_outline/-x

execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool < $pos2y worldtool unless score #blockschecked worldtool >= $outlinedBlocksPerTick worldtool run function worldtool:fill_outline/y
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool > $pos2y worldtool unless score #blockschecked worldtool >= $outlinedBlocksPerTick worldtool run function worldtool:fill_outline/-y

execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool < $pos2z worldtool unless score #blockschecked worldtool >= $outlinedBlocksPerTick worldtool run function worldtool:fill_outline/z
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool > $pos2z worldtool unless score #blockschecked worldtool >= $outlinedBlocksPerTick worldtool run function worldtool:fill_outline/-z

# Schedules a function if #blockschecked's worldtool score is more or equals to a certain number (default: 3200) (check the function for explanation of why it's here)
execute if score #blockschecked worldtool >= $outlinedBlocksPerTick worldtool run schedule function worldtool:load_process/load2_fill 1t
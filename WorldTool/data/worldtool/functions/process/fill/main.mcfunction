# Called by various functions
# The process functionality for Fill

scoreboard players add #blocksChecked worldtool 1

# All different options
execute unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run function worldtool:process/place_block.primary

# Move the writer
execute if score #writerPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/fill/x
execute if score #writerPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/fill/-x

execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/fill/z
execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/fill/-z

execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool = #pos2z worldtool if score #writerPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/fill/y
execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool = #pos2z worldtool if score #writerPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/fill/-y

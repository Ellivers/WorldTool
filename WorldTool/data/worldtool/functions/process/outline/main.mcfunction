# Called by various functions
# The process functionality for outline

scoreboard players add #blocksChecked worldtool 1

execute if score #writerPosX worldtool >= #pos1xi worldtool if score #writerPosX worldtool <= #pos1xt worldtool if score #writerPosZ worldtool >= #pos1zi worldtool if score #writerPosZ worldtool <= #pos1zt worldtool run function worldtool:process/place_block.primary
execute if score #writerPosX worldtool >= #pos1xi worldtool if score #writerPosX worldtool <= #pos1xt worldtool if score #writerPosZ worldtool <= #pos2zi worldtool if score #writerPosZ worldtool >= #pos2zt worldtool run function worldtool:process/place_block.primary
execute if score #writerPosX worldtool <= #pos2xi worldtool if score #writerPosX worldtool >= #pos2xt worldtool if score #writerPosZ worldtool >= #pos1zi worldtool if score #writerPosZ worldtool <= #pos1zt worldtool run function worldtool:process/place_block.primary
execute if score #writerPosX worldtool <= #pos2xi worldtool if score #writerPosX worldtool >= #pos2xt worldtool if score #writerPosZ worldtool <= #pos2zi worldtool if score #writerPosZ worldtool >= #pos2zt worldtool run function worldtool:process/place_block.primary

execute if score #writerPosX worldtool >= #pos1xi worldtool if score #writerPosX worldtool <= #pos1xt worldtool if score #writerPosY worldtool >= #pos1yi worldtool if score #writerPosY worldtool <= #pos1yt worldtool run function worldtool:process/place_block.primary
execute if score #writerPosX worldtool >= #pos1xi worldtool if score #writerPosX worldtool <= #pos1xt worldtool if score #writerPosY worldtool <= #pos2yi worldtool if score #writerPosY worldtool >= #pos2yt worldtool run function worldtool:process/place_block.primary
execute if score #writerPosX worldtool <= #pos2xi worldtool if score #writerPosX worldtool >= #pos2xt worldtool if score #writerPosY worldtool >= #pos1yi worldtool if score #writerPosY worldtool <= #pos1yt worldtool run function worldtool:process/place_block.primary
execute if score #writerPosX worldtool <= #pos2xi worldtool if score #writerPosX worldtool >= #pos2xt worldtool if score #writerPosY worldtool <= #pos2yi worldtool if score #writerPosY worldtool >= #pos2yt worldtool run function worldtool:process/place_block.primary

execute if score #writerPosY worldtool >= #pos1yi worldtool if score #writerPosY worldtool <= #pos1yt worldtool if score #writerPosZ worldtool >= #pos1zi worldtool if score #writerPosZ worldtool <= #pos1zt worldtool run function worldtool:process/place_block.primary
execute if score #writerPosY worldtool >= #pos1yi worldtool if score #writerPosY worldtool <= #pos1yt worldtool if score #writerPosZ worldtool <= #pos2zi worldtool if score #writerPosZ worldtool >= #pos2zt worldtool run function worldtool:process/place_block.primary
execute if score #writerPosY worldtool <= #pos2yi worldtool if score #writerPosY worldtool >= #pos2yt worldtool if score #writerPosZ worldtool >= #pos1zi worldtool if score #writerPosZ worldtool <= #pos1zt worldtool run function worldtool:process/place_block.primary
execute if score #writerPosY worldtool <= #pos2yi worldtool if score #writerPosY worldtool >= #pos2yt worldtool if score #writerPosZ worldtool <= #pos2zi worldtool if score #writerPosZ worldtool >= #pos2zt worldtool run function worldtool:process/place_block.primary

# Move the writer
execute if score #writerPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/outline/x
execute if score #writerPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/outline/-x

execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/outline/z
execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/outline/-z

execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool = #pos2z worldtool if score #writerPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/outline/y
execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool = #pos2z worldtool if score #writerPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/outline/-y

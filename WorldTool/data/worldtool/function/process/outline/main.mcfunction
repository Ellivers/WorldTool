# Called by various functions
# The process functionality for outline

scoreboard players add #blocksChecked worldtool 1

execute if score #hasMoved worldtool matches 0 unless score #tempDir worldtool matches 0 run function worldtool:process/correct_pos
execute store result score #hasMoved worldtool run scoreboard players set #tempDir worldtool 0
scoreboard players operation #prevProcessPosX worldtool = #processPosX worldtool

execute if score #processPosX worldtool >= #pos1xi worldtool if score #processPosX worldtool <= #pos1xt worldtool if score #processPosZ worldtool >= #pos1zi worldtool if score #processPosZ worldtool <= #pos1zt worldtool at @s run function worldtool:process/place_block.primary
execute if score #processPosX worldtool >= #pos1xi worldtool if score #processPosX worldtool <= #pos1xt worldtool if score #processPosZ worldtool <= #pos2zi worldtool if score #processPosZ worldtool >= #pos2zt worldtool at @s run function worldtool:process/place_block.primary
execute if score #processPosX worldtool <= #pos2xi worldtool if score #processPosX worldtool >= #pos2xt worldtool if score #processPosZ worldtool >= #pos1zi worldtool if score #processPosZ worldtool <= #pos1zt worldtool at @s run function worldtool:process/place_block.primary
execute if score #processPosX worldtool <= #pos2xi worldtool if score #processPosX worldtool >= #pos2xt worldtool if score #processPosZ worldtool <= #pos2zi worldtool if score #processPosZ worldtool >= #pos2zt worldtool at @s run function worldtool:process/place_block.primary

execute if score #processPosX worldtool >= #pos1xi worldtool if score #processPosX worldtool <= #pos1xt worldtool if score #processPosY worldtool >= #pos1yi worldtool if score #processPosY worldtool <= #pos1yt worldtool at @s run function worldtool:process/place_block.primary
execute if score #processPosX worldtool >= #pos1xi worldtool if score #processPosX worldtool <= #pos1xt worldtool if score #processPosY worldtool <= #pos2yi worldtool if score #processPosY worldtool >= #pos2yt worldtool at @s run function worldtool:process/place_block.primary
execute if score #processPosX worldtool <= #pos2xi worldtool if score #processPosX worldtool >= #pos2xt worldtool if score #processPosY worldtool >= #pos1yi worldtool if score #processPosY worldtool <= #pos1yt worldtool at @s run function worldtool:process/place_block.primary
execute if score #processPosX worldtool <= #pos2xi worldtool if score #processPosX worldtool >= #pos2xt worldtool if score #processPosY worldtool <= #pos2yi worldtool if score #processPosY worldtool >= #pos2yt worldtool at @s run function worldtool:process/place_block.primary

execute if score #processPosY worldtool >= #pos1yi worldtool if score #processPosY worldtool <= #pos1yt worldtool if score #processPosZ worldtool >= #pos1zi worldtool if score #processPosZ worldtool <= #pos1zt worldtool at @s run function worldtool:process/place_block.primary
execute if score #processPosY worldtool >= #pos1yi worldtool if score #processPosY worldtool <= #pos1yt worldtool if score #processPosZ worldtool <= #pos2zi worldtool if score #processPosZ worldtool >= #pos2zt worldtool at @s run function worldtool:process/place_block.primary
execute if score #processPosY worldtool <= #pos2yi worldtool if score #processPosY worldtool >= #pos2yt worldtool if score #processPosZ worldtool >= #pos1zi worldtool if score #processPosZ worldtool <= #pos1zt worldtool at @s run function worldtool:process/place_block.primary
execute if score #processPosY worldtool <= #pos2yi worldtool if score #processPosY worldtool >= #pos2yt worldtool if score #processPosZ worldtool <= #pos2zi worldtool if score #processPosZ worldtool >= #pos2zt worldtool at @s run function worldtool:process/place_block.primary

# Move the process entity
execute if score #processPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/outline/x
execute if score #processPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/outline/-x

execute if score #processPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/outline/z
execute if score #processPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/outline/-z

execute if score #processPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/outline/y
execute if score #processPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/outline/-y

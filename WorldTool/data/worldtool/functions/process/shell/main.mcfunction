# Called by various functions
# The process functionality for shell

scoreboard players add #blocksChecked worldtool 1

scoreboard players set #temp worldtool 0
execute if entity @s[tag=wt.process.shell.side.up] if score #writerPosY worldtool >= #pos1yi worldtool if score #writerPosY worldtool <= #pos1yt worldtool run function worldtool:process/shell/place
execute if entity @s[tag=wt.process.shell.side.down] if score #writerPosY worldtool <= #pos2yi worldtool if score #writerPosY worldtool >= #pos2yt worldtool run function worldtool:process/shell/place
execute if entity @s[tag=wt.process.shell.side.north] if score #writerPosZ worldtool <= #pos2zi worldtool if score #writerPosZ worldtool >= #pos2zt worldtool run function worldtool:process/shell/place
execute if entity @s[tag=wt.process.shell.side.south] if score #writerPosZ worldtool >= #pos1zi worldtool if score #writerPosZ worldtool <= #pos1zt worldtool run function worldtool:process/shell/place
execute if entity @s[tag=wt.process.shell.side.east] if score #writerPosX worldtool >= #pos1xi worldtool if score #writerPosX worldtool <= #pos1xt worldtool run function worldtool:process/shell/place
execute if entity @s[tag=wt.process.shell.side.west] if score #writerPosX worldtool <= #pos2xi worldtool if score #writerPosX worldtool >= #pos2xt worldtool run function worldtool:process/shell/place

execute if entity @s[tag=wt.process.shell.inner_block] if score #temp worldtool matches 0 run function worldtool:process/place_block.secondary

# Move the writer
execute if score #writerPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/shell/x
execute if score #writerPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/shell/-x

execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/shell/z
execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/shell/-z

execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool = #pos2z worldtool if score #writerPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/shell/y
execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool = #pos2z worldtool if score #writerPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/shell/-y

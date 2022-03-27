# Called by various functions
# The process functionality for Clone without rotation

scoreboard players add #blocksChecked worldtool 1

# Clone options
execute if entity @s[tag=!wt.process.clone.move] at @s run clone ~ ~ ~ ~ ~ ~ 0 1 13
execute unless score #blocksChecked worldtool >= $clonedBlocksPerTick worldtool if entity @s[tag=wt.process.clone.move,tag=!wt.process.clone.filter.normal,tag=!wt.process.clone.filter.exclude] run clone ~ ~ ~ ~ ~ ~ 0 1 13 replace move

execute unless score #blocksChecked worldtool >= $clonedBlocksPerTick worldtool if entity @s[tag=wt.process.clone.move,tag=wt.process.clone.filter.normal] if blocks 2 1 13 2 1 13 ~ ~ ~ all run clone ~ ~ ~ ~ ~ ~ 0 1 13 replace move
execute unless score #blocksChecked worldtool >= $clonedBlocksPerTick worldtool if entity @s[tag=wt.process.clone.move,tag=wt.process.clone.filter.exclude] unless blocks 2 1 13 2 1 13 ~ ~ ~ all run clone ~ ~ ~ ~ ~ ~ 0 1 13 replace move

execute unless score #blocksChecked worldtool >= $clonedBlocksPerTick worldtool at 9880ccfe-fdf6-4538-838a-ddc75a54608e unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:process/clone/check_place

# Move the writer
execute if score #writerPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/clone/normal/x
execute if score #writerPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/clone/normal/-x

execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/clone/normal/z
execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/clone/normal/-z

execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool = #pos2z worldtool if score #writerPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/clone/normal/y
execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool = #pos2z worldtool if score #writerPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/clone/normal/-y

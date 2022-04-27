# Called by various functions
# The process functionality for Clone without rotation

scoreboard players add #blocksChecked worldtool 1

# Clone options
execute if entity @s[tag=!wt.process.clone.move] run clone ~ ~ ~ ~ ~ ~ 27451 1 19
execute if entity @s[tag=wt.process.clone.move,tag=!wt.process.clone.filter.normal,tag=!wt.process.clone.filter.exclude] run clone ~ ~ ~ ~ ~ ~ 27451 1 19 replace move

execute if entity @s[tag=wt.process.clone.move,tag=wt.process.clone.filter.normal] if blocks 27449 1 19 27449 1 19 ~ ~ ~ all run clone ~ ~ ~ ~ ~ ~ 27451 1 19 replace move
execute if entity @s[tag=wt.process.clone.move,tag=wt.process.clone.filter.exclude] unless blocks 27449 1 19 27449 1 19 ~ ~ ~ all run clone ~ ~ ~ ~ ~ ~ 27451 1 19 replace move

execute at 9880ccfe-fdf6-4538-838a-ddc75a54608e unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run function worldtool:process/clone/check_place

# Move the writer
execute if score #writerPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= $clonedBlocksPerTick worldtool run function worldtool:process/clone/normal/x
execute if score #writerPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= $clonedBlocksPerTick worldtool run function worldtool:process/clone/normal/-x

execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= $clonedBlocksPerTick worldtool run function worldtool:process/clone/normal/z
execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= $clonedBlocksPerTick worldtool run function worldtool:process/clone/normal/-z

execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool = #pos2z worldtool if score #writerPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= $clonedBlocksPerTick worldtool run function worldtool:process/clone/normal/y
execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool = #pos2z worldtool if score #writerPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= $clonedBlocksPerTick worldtool run function worldtool:process/clone/normal/-y
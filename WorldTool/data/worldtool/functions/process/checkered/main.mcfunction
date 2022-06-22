# Called by various functions
# The process functionality for checkered

scoreboard players add #blocksChecked worldtool 1

execute if score #placeBlock worldtool matches 1 if entity @s[tag=!wt.process.checkered.replace.normal,tag=!wt.process.checkered.replace.exclude] unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run function worldtool:process/place_block.primary
execute if score #placeBlock worldtool matches 1 if entity @s[tag=wt.process.checkered.replace.normal] if blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run function worldtool:process/place_block.primary
execute if score #placeBlock worldtool matches 1 if entity @s[tag=wt.process.checkered.replace.exclude] unless blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run function worldtool:process/place_block.primary

# Move the writer
execute if score #writerPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/checkered/x
execute if score #writerPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/checkered/-x

execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/checkered/z
execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/checkered/-z

execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool = #pos2z worldtool if score #writerPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/checkered/y
execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool = #pos2z worldtool if score #writerPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/checkered/-y

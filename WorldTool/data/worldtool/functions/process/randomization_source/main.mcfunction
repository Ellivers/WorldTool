# Called by various functions
# The process functionality for randomization source placement

scoreboard players add #blocksChecked worldtool 1

# Place a source marker
execute unless entity @s[tag=wt.process.randomization_source.exclude] run function worldtool:process/randomization_source/place
execute if entity @s[tag=wt.process.randomization_source.exclude] unless blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all run function worldtool:process/randomization_source/place

# Move the writer
execute if score #writerPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/randomization_source/x
execute if score #writerPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/randomization_source/-x

execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/randomization_source/z
execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/randomization_source/-z

execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool = #pos2z worldtool if score #writerPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/randomization_source/y
execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool = #pos2z worldtool if score #writerPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/randomization_source/-y

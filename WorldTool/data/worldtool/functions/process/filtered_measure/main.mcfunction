# Called by various functions
# The process functionality for Measure with Filter on

scoreboard players add #blockschecked worldtool 1

# All different options
# Makes sure it doesn't check a block twice
execute unless score #blockschecked worldtool >= $blocksPerTick worldtool if entity @s[tag=wt.filtered] if blocks ~ ~ ~ ~ ~ ~ 2 1 13 all run scoreboard players add $blocksplaced worldtool 1
execute unless score #blockschecked worldtool >= $blocksPerTick worldtool if entity @s[tag=wt.filtered_exclude] unless blocks ~ ~ ~ ~ ~ ~ 2 1 13 all run scoreboard players add $blocksplaced worldtool 1

# Move the reader
execute if score #writerPosX worldtool < #pos2x worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:process/filtered_measure/x
execute if score #writerPosX worldtool > #pos2x worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:process/filtered_measure/-x

execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosY worldtool < #pos2y worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:process/filtered_measure/y
execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosY worldtool > #pos2y worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:process/filtered_measure/-y

execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosY worldtool = #pos2y worldtool if score #writerPosZ worldtool < #pos2z worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:process/filtered_measure/z
execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosY worldtool = #pos2y worldtool if score #writerPosZ worldtool > #pos2z worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:process/filtered_measure/-z

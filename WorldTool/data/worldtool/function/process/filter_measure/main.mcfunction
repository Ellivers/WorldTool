# Called by various functions
# The process functionality for Measure with Filter on

scoreboard players add #blocksChecked worldtool 1

execute if score #hasMoved worldtool matches 0 unless score #tempDir worldtool matches 0 run function worldtool:process/correct_pos
scoreboard players operation #prevProcessPosX worldtool = #processPosX worldtool

# All different options
# Makes sure it doesn't check a block twice
scoreboard players set #filterSuccess worldtool 0
execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s[tag=wt.process.filter_measure.normal] if blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all run scoreboard players set #filterSuccess worldtool 1
execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s[tag=wt.process.filter_measure.exclude] unless blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all run scoreboard players set #filterSuccess worldtool 1

execute if score #filterSuccess worldtool matches 1.. if score #blockProcessed worldtool matches 0 if score #hasMoved worldtool matches 1 run function worldtool:process/filter_measure/found
execute store result score #hasMoved worldtool store result score #blockProcessed worldtool run scoreboard players set #tempDir worldtool 0

# Move the reader
execute if score #processPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/filter_measure/x
execute if score #processPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/filter_measure/-x

execute if score #processPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/filter_measure/y
execute if score #processPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/filter_measure/-y

execute if score #processPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/filter_measure/z
execute if score #processPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/filter_measure/-z

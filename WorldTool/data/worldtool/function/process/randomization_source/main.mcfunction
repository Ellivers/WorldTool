# Called by various functions
# The process functionality for randomization source placement

scoreboard players add #blocksChecked worldtool 1

execute if score #hasMoved worldtool matches 0 unless score #tempDir worldtool matches 0 run function worldtool:process/correct_pos
execute store result score #hasMoved worldtool run scoreboard players set #tempDir worldtool 0
scoreboard players operation #prevProcessPosX worldtool = #processPosX worldtool

# Place a source marker
execute unless entity @s[tag=wt.process.randomization_source.exclude] at @s run function worldtool:process/randomization_source/place
execute at @s[tag=wt.process.randomization_source.exclude] unless blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all run function worldtool:process/randomization_source/place

# Move the process entity
execute if score #processPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/randomization_source/x
execute if score #processPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/randomization_source/-x

execute if score #processPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/randomization_source/z
execute if score #processPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/randomization_source/-z

execute if score #processPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/randomization_source/y
execute if score #processPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/randomization_source/-y

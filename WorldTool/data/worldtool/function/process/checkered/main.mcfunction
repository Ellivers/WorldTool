# Called by various functions
# The process functionality for checkered

scoreboard players add #blocksChecked worldtool 1

execute if score #hasMoved worldtool matches 0 unless score #tempDir worldtool matches 0 run function worldtool:process/correct_pos
scoreboard players operation #prevProcessPosX worldtool = #processPosX worldtool

execute if score #prevPlaceBlock worldtool = #placeBlock worldtool if score #hasMoved worldtool matches 1 if score #shouldAlternate worldtool matches 1 store result score #placeBlock worldtool if score #placeBlock worldtool matches 0

# Reset scores
execute store result score #shouldAlternate worldtool store result score #hasMoved worldtool run scoreboard players set #tempDir worldtool 0

execute if score #placeBlock worldtool matches 1 if entity @s[tag=!wt.process.checkered.replace.normal,tag=!wt.process.checkered.replace.exclude] unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run function worldtool:process/place_block.primary
execute if score #placeBlock worldtool matches 1 if entity @s[tag=wt.process.checkered.replace.normal] if blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run function worldtool:process/place_block.primary
execute if score #placeBlock worldtool matches 1 if entity @s[tag=wt.process.checkered.replace.exclude] unless blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run function worldtool:process/place_block.primary
scoreboard players operation #prevPlaceBlock worldtool = #placeBlock worldtool

# Move the process entity
execute if score #processPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/checkered/x
execute if score #processPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/checkered/-x

execute if score #processPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/checkered/z
execute if score #processPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/checkered/-z

execute if score #processPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/checkered/y
execute if score #processPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/checkered/-y

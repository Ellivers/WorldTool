# Called by various functions
# The process functionality for greenery

scoreboard players add #blocksChecked worldtool 1

execute if score #hasMoved worldtool matches 0 unless score #tempDir worldtool matches 0 run function worldtool:process/correct_pos
scoreboard players operation #prevProcessPosX worldtool = #processPosX worldtool

execute if score #blockProcessed2 worldtool matches 0 if entity @s[tag=wt.process.greenery.remove_current] unless block ~ ~ ~ #worldtool:air unless block ~ ~ ~ #worldtool:plants if block ~ ~1 ~ #worldtool:plants if block ~ ~2 ~ #worldtool:plants if block ~ ~3 ~ #worldtool:plants run function worldtool:process/greenery/remove/3_tall
execute if score #blockProcessed2 worldtool matches 0 if entity @s[tag=wt.process.greenery.remove_current] unless block ~ ~ ~ #worldtool:air unless block ~ ~ ~ #worldtool:plants if block ~ ~1 ~ #worldtool:plants if block ~ ~2 ~ #worldtool:plants run function worldtool:process/greenery/remove/2_tall
execute if score #blockProcessed2 worldtool matches 0 if entity @s[tag=wt.process.greenery.remove_current] unless block ~ ~ ~ #worldtool:air unless block ~ ~ ~ #worldtool:plants if block ~ ~1 ~ #worldtool:plants run function worldtool:process/greenery/remove/1_tall

execute if score #blockProcessed worldtool matches 0 if entity @s[tag=!wt.process.greenery.replace.normal,tag=!wt.process.greenery.replace.exclude] unless block ~ ~ ~ #worldtool:air unless block ~ ~ ~ #worldtool:plants if block ~ ~1 ~ #worldtool:air run function worldtool:process/greenery/check_base
execute if score #blockProcessed worldtool matches 0 if entity @s[tag=wt.process.greenery.replace.normal] unless block ~ ~ ~ #worldtool:air unless block ~ ~ ~ #worldtool:plants if blocks ~ ~1 ~ ~ ~1 ~ 27449 1 19 all run function worldtool:process/greenery/check_base
execute if score #blockProcessed worldtool matches 0 if entity @s[tag=wt.process.greenery.replace.exclude] unless block ~ ~ ~ #worldtool:air unless block ~ ~ ~ #worldtool:plants unless blocks ~ ~1 ~ ~ ~1 ~ 27449 1 19 all run function worldtool:process/greenery/check_base

execute store result score #hasMoved worldtool store result score #blockProcessed worldtool store result score #blockProcessed2 worldtool run scoreboard players set #tempDir worldtool 0

# Move the process entity
execute if score #processPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/greenery/x
execute if score #processPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/greenery/-x

execute if score #processPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/greenery/z
execute if score #processPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/greenery/-z

execute if score #processPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/greenery/y
execute if score #processPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/greenery/-y

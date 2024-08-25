# Called by various functions
# The process functionality for Fill

scoreboard players add #blocksChecked worldtool 1

execute if score #varMoved worldtool matches 0 unless score #tempXDir worldtool matches 0 run function worldtool:process/correct_pos
execute store result score #varMoved worldtool run scoreboard players set #tempXDir worldtool 0

# Place a block
execute at @s unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run function worldtool:process/place_block.primary

# Move the process entity
execute if score #processPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s run function worldtool:process/fill/x
execute if score #processPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s run function worldtool:process/fill/-x

execute if score #processPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s run function worldtool:process/fill/z
execute if score #processPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s run function worldtool:process/fill/-z

execute if score #processPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s run function worldtool:process/fill/y
execute if score #processPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s run function worldtool:process/fill/-y

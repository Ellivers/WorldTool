# Called by various functions
# The process functionality for the paint brush

scoreboard players add #blocksChecked worldtool 1

scoreboard players operation #temp2 worldtool = #temp worldtool

scoreboard players set #temp worldtool 0
execute if blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all run scoreboard players set #temp worldtool 1
execute if score #temp worldtool matches 0 if block ~ ~ ~ minecraft:structure_block{author:"worldtool:2d_fill"} run scoreboard players set #temp worldtool 1
execute if score #temp worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{author:"worldtool:2d_fill"}

execute if score #temp worldtool matches 1 run scoreboard players operation #minX worldtool < #processPosX worldtool
execute if score #temp worldtool matches 1 run scoreboard players operation #maxX worldtool > #processPosX worldtool
execute if score #temp worldtool matches 1 run scoreboard players operation #minY worldtool < #processPosY worldtool
execute if score #temp worldtool matches 1 run scoreboard players operation #maxY worldtool > #processPosY worldtool
execute if score #temp worldtool matches 1 run scoreboard players operation #minZ worldtool < #processPosZ worldtool
execute if score #temp worldtool matches 1 run scoreboard players operation #maxZ worldtool > #processPosZ worldtool

# Move the process entity
execute if score #temp worldtool matches 1 unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/2d_fill/x
execute if score #temp worldtool matches 1 unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/2d_fill/-x

execute if score #temp worldtool matches 1 unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/2d_fill/z
execute if score #temp worldtool matches 1 unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/2d_fill/-z

execute if score #temp worldtool matches 1 unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/complete

scoreboard players operation #temp worldtool = #temp2 worldtool

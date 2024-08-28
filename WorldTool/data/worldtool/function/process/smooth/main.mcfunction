# Called by various functions
# The process functionality for smooth

scoreboard players add #blocksChecked worldtool 1

execute if score #hasMoved worldtool matches 0 unless score #tempDir worldtool matches 0 run function worldtool:process/correct_pos
execute store result score #hasMoved worldtool run scoreboard players set #tempDir worldtool 0
scoreboard players operation #prevProcessPosX worldtool = #processPosX worldtool

execute at @s[tag=wt.process.smooth.direction.up] run function worldtool:process/smooth/directions/up/load
execute at @s[tag=wt.process.smooth.direction.east] run function worldtool:process/smooth/directions/east/load
execute at @s[tag=wt.process.smooth.direction.west] run function worldtool:process/smooth/directions/west/load
execute at @s[tag=wt.process.smooth.direction.north] run function worldtool:process/smooth/directions/north/load
execute at @s[tag=wt.process.smooth.direction.south] run function worldtool:process/smooth/directions/south/load
execute at @s[tag=wt.process.smooth.direction.down] run function worldtool:process/smooth/directions/down/load

# Move the process entity
execute if score #processPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/smooth/x
execute if score #processPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/smooth/-x

execute if score #processPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/smooth/z
execute if score #processPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/smooth/-z

execute if score #processPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/smooth/y
execute if score #processPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/smooth/-y

# Called by various functions
# The process functionality for smooth

scoreboard players add #blocksChecked worldtool 1

execute if entity @s[tag=wt.process.smooth.direction.up] run function worldtool:process/smooth/directions/up/load
execute if entity @s[tag=wt.process.smooth.direction.east] run function worldtool:process/smooth/directions/east/load
execute if entity @s[tag=wt.process.smooth.direction.west] run function worldtool:process/smooth/directions/west/load
execute if entity @s[tag=wt.process.smooth.direction.north] run function worldtool:process/smooth/directions/north/load
execute if entity @s[tag=wt.process.smooth.direction.south] run function worldtool:process/smooth/directions/south/load
execute if entity @s[tag=wt.process.smooth.direction.down] run function worldtool:process/smooth/directions/down/load

# Move the process entity
execute if score #processPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/smooth/x
execute if score #processPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/smooth/-x

execute if score #processPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/smooth/z
execute if score #processPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/smooth/-z

execute if score #processPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/smooth/y
execute if score #processPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/smooth/-y

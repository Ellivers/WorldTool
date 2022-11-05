# Called by various functions
# The process functionality for smooth

scoreboard players add #blocksChecked worldtool 1

execute if entity @s[tag=!wt.process.smooth.filter.normal,tag=!wt.process.smooth.filter.exclude] run scoreboard players set #temp worldtool 1
execute if entity @s[tag=wt.process.smooth.filter.normal] store success score #temp worldtool if blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all
execute if entity @s[tag=wt.process.smooth.filter.exclude] store success score #temp worldtool unless blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all

execute if score #temp worldtool matches 1 if entity @s[tag=wt.process.smooth.direction.up] unless block ~ ~ ~ #worldtool:air if block ~ ~1 ~ #worldtool:air run function worldtool:process/smooth/directions/up/load
execute if score #temp worldtool matches 1 if entity @s[tag=wt.process.smooth.direction.east] unless block ~ ~ ~ #worldtool:air if block ~1 ~ ~ #worldtool:air run function worldtool:process/smooth/directions/east/load
execute if score #temp worldtool matches 1 if entity @s[tag=wt.process.smooth.direction.west] unless block ~ ~ ~ #worldtool:air if block ~-1 ~ ~ #worldtool:air run function worldtool:process/smooth/directions/west/load
execute if score #temp worldtool matches 1 if entity @s[tag=wt.process.smooth.direction.north] unless block ~ ~ ~ #worldtool:air if block ~ ~ ~-1 #worldtool:air run function worldtool:process/smooth/directions/north/load
execute if score #temp worldtool matches 1 if entity @s[tag=wt.process.smooth.direction.south] unless block ~ ~ ~ #worldtool:air if block ~ ~ ~1 #worldtool:air run function worldtool:process/smooth/directions/south/load
execute if score #temp worldtool matches 1 if entity @s[tag=wt.process.smooth.direction.down] unless block ~ ~ ~ #worldtool:air if block ~ ~-1 ~ #worldtool:air run function worldtool:process/smooth/directions/down/load

# Move the process entity
execute if score #processPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/smooth/x
execute if score #processPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/smooth/-x

execute if score #processPosX worldtool = #pos2x worldtool if score #processPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/smooth/z
execute if score #processPosX worldtool = #pos2x worldtool if score #processPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/smooth/-z

execute if score #processPosX worldtool = #pos2x worldtool if score #processPosZ worldtool = #pos2z worldtool if score #processPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/smooth/y
execute if score #processPosX worldtool = #pos2x worldtool if score #processPosZ worldtool = #pos2z worldtool if score #processPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/smooth/-y

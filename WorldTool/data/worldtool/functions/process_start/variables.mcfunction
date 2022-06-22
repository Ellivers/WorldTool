# Called by worldtool:process_start/start
# Starts a process, setting variables

scoreboard players operation #ID_temp worldtool = @s wt.ID

scoreboard players set $processRunning worldtool 1

scoreboard players set #writerNotFoundError worldtool 0

## Common variables ##

scoreboard players set #totalBlocksChecked worldtool 0
scoreboard players set #blocksChecked worldtool 0
scoreboard players set #blocksPlaced worldtool 0

execute store result score #blocksPerTick worldtool run data get storage worldtool:storage Processes[-1].BlocksPerTick
execute unless score #blocksPerTick worldtool matches 2.. run scoreboard players set #blocksPerTick worldtool 2147483647

# Not so common but whatever
scoreboard players set #minX worldtool 2147483647
scoreboard players set #maxX worldtool -2147483648
scoreboard players set #minY worldtool 2147483647
scoreboard players set #maxY worldtool -2147483648
scoreboard players set #minZ worldtool 2147483647
scoreboard players set #maxZ worldtool -2147483648

scoreboard players operation #pos1xo worldtool = #pos1x worldtool
scoreboard players operation #pos1yo worldtool = #pos1y worldtool
scoreboard players operation #pos1zo worldtool = #pos1z worldtool

scoreboard players operation #pos2xo worldtool = #pos2x worldtool
scoreboard players operation #pos2yo worldtool = #pos2y worldtool
scoreboard players operation #pos2zo worldtool = #pos2z worldtool

scoreboard players set #block1Placed worldtool 0
scoreboard players set #block2Placed worldtool 0

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]
execute store result score #templatesToLoad worldtool if data storage worldtool:storage Processes[-1].AreaData.TemplateList[]
execute store result score #placeBlock worldtool if data storage worldtool:storage Temp.Process{Tags:["wt.start_with_block"]}

function #worldtool:addon/process_start/variables

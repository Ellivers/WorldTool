# Called by various functions
# The process functionality for Replace

scoreboard players add #blocksChecked worldtool 1

# All different options
execute if entity @s[tag=wt.process.replace.normal] unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all if blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all run function worldtool:process/place_block.primary
execute if entity @s[tag=wt.process.replace.exclude] unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all unless blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all run function worldtool:process/place_block.primary

# Move the process entity
execute if score #processPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/replace/x
execute if score #processPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/replace/-x

execute if score #processPosX worldtool = #pos2x worldtool if score #processPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/replace/z
execute if score #processPosX worldtool = #pos2x worldtool if score #processPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/replace/-z

execute if score #processPosX worldtool = #pos2x worldtool if score #processPosZ worldtool = #pos2z worldtool if score #processPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/replace/y
execute if score #processPosX worldtool = #pos2x worldtool if score #processPosZ worldtool = #pos2z worldtool if score #processPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/replace/-y

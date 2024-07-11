# Called by various functions
# The process functionality for the replace brush

scoreboard players add #blocksChecked worldtool 1

execute if entity @s[tag=wt.process.replace_brush.normal] unless block 27449 1 19 #worldtool:air unless block ~ ~ ~ #worldtool:air if blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run function worldtool:process/place_block.primary
execute if entity @s[tag=wt.process.replace_brush.normal] if block 27449 1 19 #worldtool:air if blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run function worldtool:process/place_block.primary
execute if entity @s[tag=wt.process.replace_brush.exclude] unless block ~ ~ ~ #worldtool:air unless blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run function worldtool:process/place_block.primary

# Move the process entity
execute if score #processPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/brush/replace/x
execute if score #processPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/brush/replace/-x

execute if score #processPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/brush/replace/z
execute if score #processPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/brush/replace/-z

execute if score #processPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/brush/replace/y
execute if score #processPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/brush/replace/-y

# Called by various functions
# The process functionality for Fill

tellraw @a ["1x ", {"score":{"name": "#pos1x","objective": "worldtool"}}," 1y ", {"score":{"name": "#pos1y","objective": "worldtool"}}," 1z ", {"score":{"name": "#pos1z","objective": "worldtool"}}]
tellraw @a ["2x ", {"score":{"name": "#pos2x","objective": "worldtool"}}," 2y ", {"score":{"name": "#pos2y","objective": "worldtool"}}," 2z ", {"score":{"name": "#pos2z","objective": "worldtool"}}]

scoreboard players add #blocksChecked worldtool 1

# All different options
execute unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:process/place_block.primary

# Move the writer
execute if score #writerPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/fill/x
execute if score #writerPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/fill/-x

execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/fill/z
execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/fill/-z

execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool = #pos2z worldtool if score #writerPosY worldtool < $pos2y worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/fill/y
execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool = #pos2z worldtool if score #writerPosY worldtool > $pos2y worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function worldtool:process/fill/-y

# Called by various functions
# The process functionality for saving an area

# Get the remaining space
scoreboard players operation #diffX worldtool = #pos2xo worldtool
scoreboard players operation #diffX worldtool -= #writerPosX worldtool
scoreboard players operation #diffY worldtool = #pos2yo worldtool
scoreboard players operation #diffY worldtool -= #writerPosY worldtool
scoreboard players operation #diffZ worldtool = #pos2zo worldtool
scoreboard players operation #diffZ worldtool -= #writerPosZ worldtool

data modify storage worldtool:storage Processes[-1].Output append value {Slot:"",Pos:[0d,0d,0d]}
execute store result storage worldtool:storage Processes[-1].Output[-1].Pos[0] double 1 run scoreboard players get #diffX worldtool
execute store result storage worldtool:storage Processes[-1].Output[-1].Pos[1] double 1 run scoreboard players get #diffY worldtool
execute store result storage worldtool:storage Processes[-1].Output[-1].Pos[2] double 1 run scoreboard players get #diffZ worldtool
data modify storage worldtool:storage Processes[-1].Output[-1].Slot set from storage worldtool:storage Processes[-1].BackupSlots[0]

execute unless score #block1Placed worldtool matches 1 store success score #block1Placed worldtool run clone ~-1 ~-1 ~-1 ~-1 ~-1 ~-1 27451 1 19
execute unless score #block2Placed worldtool matches 1 store success score #block2Placed worldtool run clone ~-1 ~-2 ~-1 ~-1 ~-2 ~-1 27449 1 19

scoreboard players operation #sizeX worldtool = #diffX worldtool
scoreboard players add #sizeX worldtool 1
scoreboard players operation #sizeY worldtool = #diffY worldtool
scoreboard players add #sizeY worldtool 1
scoreboard players operation #sizeZ worldtool = #diffZ worldtool
scoreboard players add #sizeZ worldtool 1

setblock ~-1 ~-1 ~-1 minecraft:structure_block{mode:"SAVE"}
data modify block ~-1 ~-1 ~-1 name set from storage worldtool:storage Processes[-1].BackupSlots[0]
data modify block ~-1 ~-1 ~-1 posX set value 1
data modify block ~-1 ~-1 ~-1 posY set value 1
data modify block ~-1 ~-1 ~-1 posZ set value 1
execute store result block ~-1 ~-1 ~-1 sizeX int 1 run scoreboard players get #sizeX worldtool
execute store result block ~-1 ~-1 ~-1 sizeY int 1 run scoreboard players get #sizeY worldtool
execute store result block ~-1 ~-1 ~-1 sizeZ int 1 run scoreboard players get #sizeZ worldtool
setblock ~-1 ~-2 ~-1 minecraft:redstone_block

execute store result score #newBlocksCheckedX worldtool run data get block ~-1 ~-1 ~-1 sizeX
execute store result score #newBlocksCheckedY worldtool run data get block ~-1 ~-1 ~-1 sizeY
execute store result score #newBlocksCheckedZ worldtool run data get block ~-1 ~-1 ~-1 sizeZ

clone 27451 1 19 27451 1 19 ~-1 ~-1 ~-1
clone 27449 1 19 27449 1 19 ~-1 ~-2 ~-1

data remove storage worldtool:storage Processes[-1].BackupSlots[0]

scoreboard players operation #newBlocksChecked worldtool = #newBlocksCheckedX worldtool
scoreboard players operation #newBlocksChecked worldtool *= #newBlocksCheckedY worldtool
scoreboard players operation #newBlocksChecked worldtool *= #newBlocksCheckedZ worldtool

scoreboard players operation #blocksChecked worldtool += #newBlocksChecked worldtool

scoreboard players set #block1Placed worldtool 0
scoreboard players set #block2Placed worldtool 0

scoreboard players operation #sizeX worldtool = #pos2x worldtool
scoreboard players operation #sizeX worldtool -= #writerPosX worldtool
execute if score #sizeX worldtool matches ..-1 run scoreboard players operation #sizeX worldtool *= #-1 worldtool
scoreboard players add #sizeX worldtool 1
scoreboard players operation #sizeY worldtool = #pos2y worldtool
scoreboard players operation #sizeY worldtool -= #writerPosY worldtool
execute if score #sizeY worldtool matches ..-1 run scoreboard players operation #sizeY worldtool *= #-1 worldtool
scoreboard players add #sizeY worldtool 1
scoreboard players operation #sizeZ worldtool = #pos2z worldtool
scoreboard players operation #sizeZ worldtool -= #writerPosZ worldtool
execute if score #sizeZ worldtool matches ..-1 run scoreboard players operation #sizeZ worldtool *= #-1 worldtool
scoreboard players add #sizeZ worldtool 1

execute if score #writerPosX worldtool < #pos2x worldtool if score #sizeX worldtool >= $templateSizeLimit worldtool unless score #blocksChecked worldtool >= $backedUpBlocksPerTick worldtool run function worldtool:process/save_area/x
execute if score #writerPosX worldtool > #pos2x worldtool if score #sizeX worldtool >= $templateSizeLimit worldtool unless score #blocksChecked worldtool >= $backedUpBlocksPerTick worldtool run function worldtool:process/save_area/-x

execute if score #sizeX worldtool < $templateSizeLimit worldtool if score #writerPosZ worldtool < #pos2z worldtool if score #sizeZ worldtool >= $templateSizeLimit worldtool unless score #blocksChecked worldtool >= $backedUpBlocksPerTick worldtool run function worldtool:process/save_area/z
execute if score #sizeX worldtool < $templateSizeLimit worldtool if score #writerPosZ worldtool > #pos2z worldtool if score #sizeZ worldtool >= $templateSizeLimit worldtool unless score #blocksChecked worldtool >= $backedUpBlocksPerTick worldtool run function worldtool:process/save_area/-z

execute if score #sizeX worldtool < $templateSizeLimit worldtool if score #sizeZ worldtool < $templateSizeLimit worldtool if score #writerPosY worldtool < #pos2y worldtool if score #sizeY worldtool >= $templateSizeLimit worldtool unless score #blocksChecked worldtool >= $backedUpBlocksPerTick worldtool run function worldtool:process/save_area/y
execute if score #sizeX worldtool < $templateSizeLimit worldtool if score #sizeZ worldtool < $templateSizeLimit worldtool if score #writerPosY worldtool > #pos2y worldtool if score #sizeY worldtool >= $templateSizeLimit worldtool unless score #blocksChecked worldtool >= $backedUpBlocksPerTick worldtool run function worldtool:process/save_area/-y

# End the process
scoreboard players operation #writerPosX worldtool = #pos2x worldtool
scoreboard players operation #writerPosY worldtool = #pos2y worldtool
scoreboard players operation #writerPosZ worldtool = #pos2z worldtool

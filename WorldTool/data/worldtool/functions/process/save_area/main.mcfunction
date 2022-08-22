# Called by various functions
# The process functionality for saving an area

scoreboard players operation #diffX worldtool = #writerPosX worldtool
scoreboard players operation #diffX worldtool -= #pos1xo worldtool
scoreboard players operation #diffY worldtool = #writerPosY worldtool
scoreboard players operation #diffY worldtool -= #pos1yo worldtool
scoreboard players operation #diffZ worldtool = #writerPosZ worldtool
scoreboard players operation #diffZ worldtool -= #pos1zo worldtool

data modify storage worldtool:storage Processes[-1].Output.TemplateList append value {Slot:"",Pos:[0d,0d,0d]}
execute store result storage worldtool:storage Processes[-1].Output.TemplateList[-1].Pos[0] double 1 run scoreboard players get #diffX worldtool
execute store result storage worldtool:storage Processes[-1].Output.TemplateList[-1].Pos[1] double 1 run scoreboard players get #diffY worldtool
execute store result storage worldtool:storage Processes[-1].Output.TemplateList[-1].Pos[2] double 1 run scoreboard players get #diffZ worldtool
data modify storage worldtool:storage Processes[-1].Output.TemplateList[-1].Slot set from storage worldtool:storage Processes[-1].Input.BackupSlots[0]

execute unless score #block1Placed worldtool matches 1 store success score #block1Placed worldtool run clone ~-1 ~-1 ~-1 ~-1 ~-1 ~-1 27451 1 19
execute unless score #block2Placed worldtool matches 1 store success score #block2Placed worldtool run clone ~-1 ~-2 ~-1 ~-1 ~-2 ~-1 27449 1 19

# Get the remaining space
scoreboard players operation #sizeX worldtool = #pos2xo worldtool
scoreboard players operation #sizeX worldtool -= #writerPosX worldtool
scoreboard players add #sizeX worldtool 1
scoreboard players operation #sizeY worldtool = #pos2yo worldtool
scoreboard players operation #sizeY worldtool -= #writerPosY worldtool
scoreboard players add #sizeY worldtool 1
scoreboard players operation #sizeZ worldtool = #pos2zo worldtool
scoreboard players operation #sizeZ worldtool -= #writerPosZ worldtool
scoreboard players add #sizeZ worldtool 1

scoreboard players operation #sizeX worldtool < $templateSizeLimit worldtool
scoreboard players operation #sizeY worldtool < $templateSizeLimit worldtool
scoreboard players operation #sizeZ worldtool < $templateSizeLimit worldtool

setblock ~-1 ~-1 ~-1 minecraft:structure_block{mode:"SAVE",ignoreEntities:1b,author:"worldtool:save_area"}
data modify block ~-1 ~-1 ~-1 name set from storage worldtool:storage Processes[-1].Input.BackupSlots[0]
data modify block ~-1 ~-1 ~-1 posX set value 1
data modify block ~-1 ~-1 ~-1 posY set value 1
data modify block ~-1 ~-1 ~-1 posZ set value 1
execute store result block ~-1 ~-1 ~-1 sizeX int 1 run scoreboard players get #sizeX worldtool
execute store result block ~-1 ~-1 ~-1 sizeY int 1 run scoreboard players get #sizeY worldtool
execute store result block ~-1 ~-1 ~-1 sizeZ int 1 run scoreboard players get #sizeZ worldtool

setblock ~-1 ~-2 ~-1 minecraft:air
setblock ~-1 ~-2 ~-1 minecraft:redstone_block

clone 27451 1 19 27451 1 19 ~-1 ~-1 ~-1
clone 27449 1 19 27449 1 19 ~-1 ~-2 ~-1

scoreboard players operation #newBlocksChecked worldtool = #sizeX worldtool
scoreboard players operation #newBlocksChecked worldtool *= #sizeY worldtool
scoreboard players operation #newBlocksChecked worldtool *= #sizeZ worldtool

scoreboard players operation #blocksChecked worldtool += #newBlocksChecked worldtool

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool run data remove storage worldtool:storage Processes[-1].Input.BackupSlots[0]

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

execute if score #writerPosX worldtool < #pos2x worldtool if score #sizeX worldtool > $templateSizeLimit worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/save_area/x
execute if score #writerPosX worldtool > #pos2x worldtool if score #sizeX worldtool > $templateSizeLimit worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/save_area/-x

execute if score #sizeX worldtool <= $templateSizeLimit worldtool if score #writerPosZ worldtool < #pos2z worldtool if score #sizeZ worldtool > $templateSizeLimit worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/save_area/z
execute if score #sizeX worldtool <= $templateSizeLimit worldtool if score #writerPosZ worldtool > #pos2z worldtool if score #sizeZ worldtool > $templateSizeLimit worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/save_area/-z

execute if score #sizeX worldtool <= $templateSizeLimit worldtool if score #sizeZ worldtool <= $templateSizeLimit worldtool if score #writerPosY worldtool < #pos2y worldtool if score #sizeY worldtool > $templateSizeLimit worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/save_area/y
execute if score #sizeX worldtool <= $templateSizeLimit worldtool if score #sizeZ worldtool <= $templateSizeLimit worldtool if score #writerPosY worldtool > #pos2y worldtool if score #sizeY worldtool > $templateSizeLimit worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/save_area/-y

# End the process
scoreboard players operation #writerPosX worldtool = #pos2x worldtool
scoreboard players operation #writerPosY worldtool = #pos2y worldtool
scoreboard players operation #writerPosZ worldtool = #pos2z worldtool

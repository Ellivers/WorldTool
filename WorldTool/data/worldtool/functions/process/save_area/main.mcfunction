# Called by various functions
# The process functionality for saving an area

# Get the remaining space
scoreboard players operation #diffX worldtool = #pos2xo worldtool
scoreboard players operation #diffX worldtool -= #writerPosX worldtool
scoreboard players operation #diffY worldtool = #pos2yo worldtool
scoreboard players operation #diffY worldtool -= #writerPosY worldtool
scoreboard players operation #diffZ worldtool = #pos2zo worldtool
scoreboard players operation #diffZ worldtool -= #writerPosZ worldtool

scoreboard players operation #sizeX worldtool = #diffX worldtool
scoreboard players add #sizeX worldtool 1
scoreboard players operation #sizeY worldtool = #diffY worldtool
scoreboard players add #sizeY worldtool 1
scoreboard players operation #sizeZ worldtool = #diffZ worldtool
scoreboard players add #sizeZ worldtool 1

data modify storage worldtool:storage Processes[-1].Output append value {Slot:"",Pos:[0d,0d,0d]}
execute store result storage worldtool:storage Processes[-1].Output[-1].Pos[0] double 1 run scoreboard players get #diffX worldtool
execute store result storage worldtool:storage Processes[-1].Output[-1].Pos[1] double 1 run scoreboard players get #diffY worldtool
execute store result storage worldtool:storage Processes[-1].Output[-1].Pos[2] double 1 run scoreboard players get #diffZ worldtool
data modify storage worldtool:storage Processes[-1].Output[-1].Slot set from storage worldtool:storage Processes[-1].BackupSlots[0]

# Set the first corner
execute unless score #block1Placed worldtool matches 1 store success score #block1Placed worldtool run clone ~-1 ~-1 ~-1 ~-1 ~-1 ~-1 27451 1 19 replace
setblock ~-1 ~-1 ~-1 minecraft:structure_block{mode:"CORNER"}
data modify block ~-1 ~-1 ~-1 name set from storage worldtool:storage Processes[-1].BackupSlots[0]

# Find and set the second corner
scoreboard players operation #pos2xt worldtool = #pos2xo worldtool
execute unless score #diffX worldtool matches ..0 if score #sizeX worldtool <= $templateSizeLimit worldtool run scoreboard players operation #pos2xt worldtool += #diffX worldtool
execute if score #sizeX worldtool > $templateSizeLimit worldtool run scoreboard players operation #pos2xt worldtool += $templateSizeLimit worldtool

scoreboard players operation #pos2yt worldtool = #pos2yo worldtool
execute unless score #diffY worldtool matches ..0 if score #sizeY worldtool <= $templateSizeLimit worldtool run scoreboard players operation #pos2yt worldtool += #diffY worldtool
execute if score #sizeY worldtool > $templateSizeLimit worldtool run scoreboard players operation #pos2yt worldtool += $templateSizeLimit worldtool

scoreboard players operation #pos2zt worldtool = #pos2zo worldtool
execute unless score #diffZ worldtool matches ..0 if score #sizeZ worldtool <= $templateSizeLimit worldtool run scoreboard players operation #pos2zt worldtool += #diffZ worldtool
execute if score #sizeZ worldtool > $templateSizeLimit worldtool run scoreboard players operation #pos2zt worldtool += $templateSizeLimit worldtool

data modify storage worldtool:storage Temp.Pos set value [0d,0d,0d]
execute store result storage worldtool:storage Temp.Pos[0] double 1 run scoreboard players get #pos2xt worldtool
execute store result storage worldtool:storage Temp.Pos[1] double 1 run scoreboard players get #pos2yt worldtool
execute store result storage worldtool:storage Temp.Pos[2] double 1 run scoreboard players get #pos2zt worldtool
data modify entity @s Pos set from storage worldtool:storage Temp.Pos
execute at @s run function worldtool:process/save_area/main.pos2


execute unless score #block3Placed worldtool matches 1 store success score #block3Placed worldtool run clone ~-2 ~-2 ~-2 ~-2 ~-2 ~-2 27451 3 19
execute unless score #block4Placed worldtool matches 1 store success score #block4Placed worldtool run clone ~-2 ~-3 ~-2 ~-2 ~-3 ~-2 27449 3 19

setblock ~-2 ~-2 ~-2 minecraft:structure_block{mode:"SAVE"}
data modify block ~-2 ~-2 ~-2 name set from storage worldtool:storage Processes[-1].BackupSlots[0]
data modify block ~-2 ~-2 ~-2 posX set value 2
data modify block ~-2 ~-2 ~-2 posY set value 2
data modify block ~-2 ~-2 ~-2 posZ set value 2
execute store result block ~-2 ~-2 ~-2 sizeX int 1 run scoreboard players get #sizeX worldtool
execute store result block ~-2 ~-2 ~-2 sizeY int 1 run scoreboard players get #sizeY worldtool
execute store result block ~-2 ~-2 ~-2 sizeZ int 1 run scoreboard players get #sizeZ worldtool
tellraw @a {"nbt":"{}","block": "~-2 ~-2 ~-2"}
setblock ~-2 ~-3 ~-2 minecraft:redstone_block

execute store result score #newBlocksCheckedX worldtool run data get block ~-2 ~-2 ~-2 sizeX
execute store result score #newBlocksCheckedY worldtool run data get block ~-2 ~-2 ~-2 sizeY
execute store result score #newBlocksCheckedZ worldtool run data get block ~-2 ~-2 ~-2 sizeZ

#clone 27451 1 19 27451 1 19 ~-1 ~-1 ~-1
#execute at @s run clone 27449 1 19 27449 1 19 ~ ~ ~
#clone 27451 3 19 27451 3 19 ~-2 ~-2 ~-2
#clone 27449 3 19 27449 3 19 ~-2 ~-3 ~-2

data remove storage worldtool:storage Processes[-1].BackupSlots[0]

scoreboard players operation #newBlocksChecked worldtool = #newBlocksCheckedX worldtool
scoreboard players operation #newBlocksChecked worldtool *= #newBlocksCheckedY worldtool
scoreboard players operation #newBlocksChecked worldtool *= #newBlocksCheckedZ worldtool

scoreboard players operation #blocksChecked worldtool += #newBlocksChecked worldtool

scoreboard players set #block1Placed worldtool 0
scoreboard players set #block2Placed worldtool 0
scoreboard players set #block3Placed worldtool 0
scoreboard players set #block4Placed worldtool 0

scoreboard players operation #diffX worldtool = #pos2x worldtool
scoreboard players operation #diffX worldtool -= #writerPosX worldtool
scoreboard players operation #diffY worldtool = #pos2y worldtool
scoreboard players operation #diffY worldtool -= #writerPosY worldtool
scoreboard players operation #diffZ worldtool = #pos2z worldtool
scoreboard players operation #diffZ worldtool -= #writerPosZ worldtool

execute if score #writerPosX worldtool < #pos2x worldtool unless score #diffX worldtool < $templateSizeLimit worldtool unless score #blocksChecked worldtool >= $randomizedBlocksPerTick worldtool run function worldtool:process/save_area/x
execute if score #writerPosX worldtool > #pos2x worldtool unless score #diffX worldtool < $templateSizeLimit worldtool unless score #blocksChecked worldtool >= $randomizedBlocksPerTick worldtool run function worldtool:process/save_area/-x

execute if score #diffX worldtool < $templateSizeLimit worldtool if score #writerPosZ worldtool < #pos2z worldtool unless score #diffZ worldtool < $templateSizeLimit worldtool unless score #blocksChecked worldtool >= $randomizedBlocksPerTick worldtool run function worldtool:process/save_area/z
execute if score #diffX worldtool < $templateSizeLimit worldtool if score #writerPosZ worldtool > #pos2z worldtool unless score #diffZ worldtool < $templateSizeLimit worldtool unless score #blocksChecked worldtool >= $randomizedBlocksPerTick worldtool run function worldtool:process/save_area/-z

execute if score #diffX worldtool < $templateSizeLimit worldtool if score #diffZ worldtool < $templateSizeLimit worldtool if score #writerPosY worldtool < #pos2y worldtool unless score #diffY worldtool < $templateSizeLimit worldtool unless score #blocksChecked worldtool >= $randomizedBlocksPerTick worldtool run function worldtool:process/save_area/y
execute if score #diffX worldtool < $templateSizeLimit worldtool if score #diffZ worldtool < $templateSizeLimit worldtool if score #writerPosY worldtool > #pos2y worldtool unless score #diffY worldtool < $templateSizeLimit worldtool unless score #blocksChecked worldtool >= $randomizedBlocksPerTick worldtool run function worldtool:process/save_area/-y

# End the process
scoreboard players operation #writerPosX worldtool = #pos2x worldtool
scoreboard players operation #writerPosY worldtool = #pos2y worldtool
scoreboard players operation #writerPosZ worldtool = #pos2z worldtool

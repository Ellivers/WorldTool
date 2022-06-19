# Called recursively and by worldtool:process/load.tags
# The process functionality for loading an area

scoreboard players add #blocksChecked worldtool 1

execute unless score #block1Placed worldtool matches 1 store success score #block1Placed worldtool run clone ~ ~ ~ ~ ~ ~ 27451 1 19
execute unless score #block2Placed worldtool matches 1 store success score #block2Placed worldtool run clone ~ ~-1 ~ ~ ~-1 ~ 27449 1 19
setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posY:0,author:"worldtool:load_area"}
data modify block ~ ~ ~ name set from storage worldtool:storage Processes[-1].AreaData.TemplateList[0].Slot
setblock ~ ~-1 ~ minecraft:redstone_block
clone 27449 1 19 27449 1 19 ~ ~-1 ~

execute if block ~ ~ ~ minecraft:structure_block{author:"worldtool:load_area"} run function worldtool:process/load_area/error

execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[-1].AreaData.TemplateList[0].Pos[0]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[-1].AreaData.TemplateList[0].Pos[1]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Processes[-1].AreaData.TemplateList[0].Pos[2]

scoreboard players operation #pos1xt worldtool += #pos1xo worldtool
scoreboard players operation #pos1yt worldtool += #pos1yo worldtool
scoreboard players operation #pos1zt worldtool += #pos1zo worldtool

data modify storage worldtool:storage Temp.Pos set value [0d,0d,0d]
execute store result storage worldtool:storage Temp.Pos[0] double 1 run scoreboard players get #pos1xt worldtool
execute store result storage worldtool:storage Temp.Pos[1] double 1 run scoreboard players get #pos1yt worldtool
execute store result storage worldtool:storage Temp.Pos[2] double 1 run scoreboard players get #pos1zt worldtool

data modify entity @s Pos set from storage worldtool:storage Temp.Pos

data remove storage worldtool:storage Processes[-1].AreaData.TemplateList[0]

scoreboard players set #block1Placed worldtool 0
scoreboard players set #block2Placed worldtool 0

execute unless score #blocksChecked worldtool >= #templatesToLoad worldtool at @s run function worldtool:process/load_area/main

# End the process
scoreboard players operation #writerPosX worldtool = #pos2x worldtool
scoreboard players operation #writerPosY worldtool = #pos2y worldtool
scoreboard players operation #writerPosZ worldtool = #pos2z worldtool

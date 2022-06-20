# Called by worldtool:process/load_area/main
# Loads a template

execute unless score #block1Placed worldtool matches 1 store success score #block1Placed worldtool run clone ~ ~ ~ ~ ~ ~ 27451 1 19
execute unless score #block2Placed worldtool matches 1 store success score #block2Placed worldtool run clone ~ ~-1 ~ ~ ~-1 ~ 27449 1 19
setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posY:0,author:"worldtool:load_area",ignoreEntities:1b}
data modify block ~ ~ ~ name set from storage worldtool:storage Processes[-1].AreaData.TemplateList[0].Slot
setblock ~ ~-1 ~ minecraft:redstone_block
clone 27449 1 19 27449 1 19 ~ ~-1 ~

execute if block ~ ~ ~ minecraft:structure_block{author:"worldtool:load_area"} run function worldtool:process/load_area/error

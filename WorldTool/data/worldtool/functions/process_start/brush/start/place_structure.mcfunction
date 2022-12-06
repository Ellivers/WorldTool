# Called by worldtool:process_start/brush/start/load
# Places a template (structure brush)

clone ~ ~ ~ ~ ~ ~ 27451 1 19
clone ~ ~1 ~ ~ ~1 ~ 27449 1 19

setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",metadata:"worldtool:structure_brush"}

data modify block ~ ~ ~ name set from entity @s SelectedItem.tag.WorldTool.BrushSettings.Structure

data modify block ~ ~ ~ {} merge from entity @s SelectedItem.tag.WorldTool.BrushSettings.StructureOffset
data modify block ~ ~ ~ rotation set from entity @s SelectedItem.tag.WorldTool.BrushSettings.StructureRotation
data modify block ~ ~ ~ mirror set from entity @s SelectedItem.tag.WorldTool.BrushSettings.StructureMirror

scoreboard players set #temp worldtool 0
execute store result score #offsetX worldtool run data get block ~ ~ ~ posX
execute store result score #offsetY worldtool run data get block ~ ~ ~ posY
execute store result score #offsetZ worldtool run data get block ~ ~ ~ posZ
scoreboard players operation #temp worldtool > #offsetX worldtool
scoreboard players operation #temp worldtool > #offsetY worldtool
scoreboard players operation #temp worldtool > #offsetZ worldtool

setblock ~ ~1 ~ minecraft:air
execute if block ~ ~ ~ minecraft:structure_block{metadata:"worldtool:structure_brush"} run setblock ~ ~1 ~ minecraft:redstone_block

scoreboard players set #temp2 worldtool 0
execute if block ~ ~ ~ minecraft:structure_block{metadata:"worldtool:structure_brush",sizeX:0} run scoreboard players set #temp2 worldtool 1
execute if score #temp2 worldtool matches 1 run tellraw @s {"nbt":"Translation.\"error.invalid_structure\"","storage": "worldtool:storage","color": "red"}

execute if block ~ ~ ~ minecraft:structure_block{metadata:"worldtool:structure_brush"} run clone 27451 1 19 27451 1 19 ~ ~ ~
execute if score #temp worldtool matches 1.. run clone 27451 1 19 27451 1 19 ~ ~ ~
execute if score #temp2 worldtool matches 1 run clone 27451 1 19 27451 1 19 ~ ~ ~
execute if score #offsetY worldtool matches 2.. run clone 27449 1 19 27449 1 19 ~ ~1 ~
execute if score #temp2 worldtool matches 1 run clone 27449 1 19 27449 1 19 ~ ~1 ~

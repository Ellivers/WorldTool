function worldtool:ui_general/clear_chat
loot spawn ~ ~ ~ loot worldtool:generation_tool

data modify storage worldtool:storage TemporaryBlock.BlockState set from entity @e[type=minecraft:falling_block,tag=switch_gen_block,limit=1] BlockState
data modify storage worldtool:storage TemporaryBlock.BlockData set from entity @e[type=minecraft:falling_block,tag=switch_gen_block,limit=1] TileEntityData
setblock ~2 255 ~ oak_sign{Text1:'{"nbt":"TemporaryBlock.BlockState.Name","storage":"worldtool:storage","color":"light_purple","italic":false}'}
execute as @e[type=minecraft:item,sort=nearest,limit=1] run function worldtool:ui_shapes/select/block_selected.item
clone ~1 255 ~ ~1 255 ~ ~2 255 ~

kill @e[type=minecraft:falling_block,tag=switch_gen_block,limit=1]
replaceitem entity @s weapon.mainhand minecraft:air
tag @s remove wt_check_block_shge
tag @s remove wt_block_check
scoreboard players set @s wt_drop_coas 1

function worldtool:ui_general/clear_chat
function worldtool:ui_brush/give_brush.brushes
execute if predicate worldtool:tool_states/all unless data entity @s SelectedItem.tag.Brush run loot spawn ~ ~ ~ loot worldtool:brushes/none

data modify storage worldtool:storage TemporaryBlock.BlockState set from entity @e[type=minecraft:falling_block,tag=switch_block_brush,limit=1] BlockState
data modify storage worldtool:storage TemporaryBlock.BlockData set from entity @e[type=minecraft:falling_block,tag=switch_block_brush,limit=1] TileEntityData
setblock ~2 255 ~ oak_sign{Text1:'{"nbt":"TemporaryBlock.BlockState.Name","storage":"worldtool:storage","color":"light_purple","italic":false}'}
execute as @e[type=minecraft:item,sort=nearest,limit=1] run function worldtool:ui_brush/set/set_block.item
clone ~1 255 ~ ~1 255 ~ ~2 255 ~

kill @e[type=minecraft:falling_block,tag=switch_block_brush,limit=1]
replaceitem entity @s weapon.mainhand minecraft:air
tag @s remove setting_brush_block

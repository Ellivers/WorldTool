function worldtool:ui/clear_chat
function worldtool:ui/brush/give_brush.brushes
execute if predicate worldtool:tool_states/all unless data entity @s SelectedItem.tag.Brush run loot spawn ~ ~ ~ loot worldtool:brushes/none

setblock ~2 255 ~ oak_sign{Text1:'{"nbt":"BlockState.Name","entity":"@e[type=minecraft:falling_block,tag=switch_block_brush,limit=1]","color":"light_purple","italic":false}'}
execute as @e[type=minecraft:item,sort=nearest,limit=1] run function worldtool:ui/brush/set/set_block.item
clone ~1 255 ~ ~1 255 ~ ~2 255 ~

kill @e[type=minecraft:falling_block,tag=switch_block_brush,limit=1]
replaceitem entity @s weapon.mainhand minecraft:air
tag @s remove setting_brush_block
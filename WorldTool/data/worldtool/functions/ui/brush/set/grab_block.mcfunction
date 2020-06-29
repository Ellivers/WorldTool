tag @s remove grabbing_block
function worldtool:ui/clear_chat
tellraw @s [{"text":"Picked block "},{"nbt":"inBlockState.Name","entity":"@e[type=minecraft:arrow,tag=switch_block_brush,limit=1]"}]

execute if predicate worldtool:brushes/paint run loot spawn ~ ~ ~ loot worldtool:brushes/paint
execute if predicate worldtool:brushes/place run loot spawn ~ ~ ~ loot worldtool:brushes/place
execute if predicate worldtool:brushes/replace run loot spawn ~ ~ ~ loot worldtool:brushes/replace
execute if predicate worldtool:brushes/sphere run loot spawn ~ ~ ~ loot worldtool:brushes/sphere
execute if predicate worldtool:brushes/circle run loot spawn ~ ~ ~ loot worldtool:brushes/circle
execute unless data entity @s SelectedItem.tag.Brush run loot spawn ~ ~ ~ loot worldtool:brushes/none

setblock ~2 255 ~ oak_sign{Text1:'{"nbt":"inBlockState.Name","entity":"@e[type=minecraft:arrow,tag=switch_block_brush,limit=1]","color":"light_purple","italic":false}'}
execute as @e[type=minecraft:item,sort=nearest,limit=1] run function worldtool:ui/brush/set/grab_block.item
clone ~1 255 ~ ~1 255 ~ ~2 255 ~
execute at @e[type=minecraft:area_effect_cloud,tag=brush_grab_marker] run clone ~1 ~-1 ~ ~1 ~ ~ ~ ~-1 ~

kill @e[type=minecraft:arrow,tag=switch_block_brush,limit=1]
execute as @e[type=minecraft:area_effect_cloud,tag=wt_check] if score @s wt_ID = @p wt_ID run kill @s
replaceitem entity @s weapon.mainhand minecraft:air
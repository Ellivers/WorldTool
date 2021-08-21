function worldtool:ui/tool_brush/give_brush

execute if entity @s[tag=replacebrush] run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.BrushSettings.Replace set value "normal"
execute if entity @s[tag=replacebrush_reversed] run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.BrushSettings.Replace set value "exclude"

data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.ReplaceBlock.BlockState set from entity @e[type=minecraft:falling_block,tag=switch_block_brush,limit=1] BlockState
data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.ReplaceBlock.BlockData set from entity @e[type=minecraft:falling_block,tag=switch_block_brush,limit=1] TileEntityData
execute as @e[type=minecraft:item,sort=nearest,limit=1] if data entity @s {Item:{tag:{BrushSettings:{Replace:"exclude"}}}} run data modify entity @s Item.tag.display.Lore[6] set value '{"text":"Not replacing block:","color":"white","italic":false}'
setblock ~2 255 ~ oak_sign{Text1:'{"nbt":"BlockState.Name","entity":"@e[type=minecraft:falling_block,tag=switch_block_brush,limit=1]","color":"gold","italic":false}'}
data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.display.Lore[7] set from block ~2 255 ~ Text1
clone ~1 255 ~ ~1 255 ~ ~2 255 ~
kill @e[type=minecraft:falling_block,tag=switch_block_brush,limit=1]
item replace entity @s weapon.mainhand with minecraft:air

tag @s remove replacebrush
tag @s remove replacebrush_reversed
tag @s remove setting_bb_replace
function worldtool:ui/tool_brush/select
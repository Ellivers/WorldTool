data modify entity @s Item.tag.display.Lore[7] set from block ~2 255 ~ Text1
data modify entity @s Item.tag.ReplaceBlock.BlockState set from entity @e[type=minecraft:arrow,tag=switch_block_brush,limit=1] inBlockState
execute at @e[type=minecraft:arrow,tag=switch_block_brush,limit=1] run data modify entity @s Item.tag.ReplaceBlock.BlockData set from block ~ ~-.1 ~
data modify entity @s PickupDelay set value 0s
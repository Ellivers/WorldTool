data modify entity @s Item.tag.display.Lore[4] set from block ~ 255 ~ Text1
data modify entity @s Item.tag.Block set from entity @e[type=minecraft:falling_block,tag=switch_block_brush,limit=1] BlockState
data modify entity @s PickupDelay set value 0s
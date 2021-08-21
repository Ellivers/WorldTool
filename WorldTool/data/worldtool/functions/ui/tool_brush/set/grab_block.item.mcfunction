data modify entity @s Item.tag.display.Lore[4] set from block ~2 255 ~ Text1
data modify entity @s Item.tag.Block.BlockState set from storage worldtool:storage BlockGrab
execute at @e[type=minecraft:arrow,tag=switch_block_brush,limit=1] run data modify entity @s Item.tag.Block.BlockData set from block ~ ~-.1 ~
data modify entity @s PickupDelay set value 0s

execute unless block ~ ~ ~ water run data modify entity @s Item.tag.Block.BlockState.Name set value "minecraft:air"
execute if block ~ ~ ~ water run data modify entity @s Item.tag.Block.BlockState.Name set value "minecraft:water"

execute unless block ~ ~ ~ water run data modify entity @s Item.tag.display.Lore[4] set value '{"text":"minecraft:air","color":"light_purple","italic":false}'
execute if block ~ ~ ~ water run data modify entity @s Item.tag.display.Lore[4] set value '{"text":"minecraft:water","color":"light_purple","italic":false}'
data modify entity @s PickupDelay set value 0s
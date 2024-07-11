# Called by worldtool:pick_block/other/attempt2
# Attempts to get the loot from the selected block by mining it with two different tools

loot replace block ~ ~-1 ~ container.0 mine ~ ~ ~ minecraft:netherite_pickaxe[minecraft:enchantments={"minecraft:silk_touch":1}]
loot replace block ~ ~-1 ~ container.1 mine ~ ~ ~ minecraft:shears[minecraft:enchantments={"minecraft:silk_touch":1}]

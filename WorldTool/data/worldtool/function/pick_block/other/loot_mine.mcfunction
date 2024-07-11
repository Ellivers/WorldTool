# Called by worldtool:pick_block/other/attempt2
# Attempts to get the loot from the selected block by mining it with two different tools

loot replace block ~ ~-1 ~ container.0 mine ~ ~ ~ minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
loot replace block ~ ~-1 ~ container.1 mine ~ ~ ~ minecraft:shears{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}

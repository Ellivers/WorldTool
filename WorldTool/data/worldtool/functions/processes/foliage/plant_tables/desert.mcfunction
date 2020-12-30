scoreboard players add $blocksplaced worldtool 1
# Spawn loot from loot table
loot spawn ~ ~ ~ loot worldtool:plant_tables/16
execute store result score @s worldtool run data get entity @e[type=minecraft:item,sort=nearest,limit=1] Item.Count
kill @e[type=minecraft:item,sort=nearest,limit=1]

# Each score value places a different plant
execute if score @s worldtool matches ..3 if block ~1 ~ ~ #worldtool:air_blocks if block ~ ~ ~1 #worldtool:air_blocks if block ~-1 ~ ~ #worldtool:air_blocks if block ~ ~ ~-1 #worldtool:air_blocks run setblock ~ ~ ~ minecraft:cactus
execute if score @s worldtool matches 4..6 if block ~1 ~ ~ #worldtool:air_blocks if block ~ ~ ~1 #worldtool:air_blocks if block ~-1 ~ ~ #worldtool:air_blocks if block ~ ~ ~-1 #worldtool:air_blocks if block ~ ~1 ~ #worldtool:air_blocks run fill ~ ~ ~ ~ ~1 ~ minecraft:cactus
execute if score @s worldtool matches 7 if block ~1 ~ ~ #worldtool:air_blocks if block ~ ~ ~1 #worldtool:air_blocks if block ~-1 ~ ~ #worldtool:air_blocks if block ~ ~ ~-1 #worldtool:air_blocks if block ~ ~1 ~ #worldtool:air_blocks if block ~ ~2 ~ #worldtool:air_blocks run fill ~ ~ ~ ~ ~2 ~ minecraft:cactus
execute if score @s worldtool matches 8..16 run setblock ~ ~ ~ minecraft:dead_bush
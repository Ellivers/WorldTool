scoreboard players add $blocksplaced worldtool 1
# Spawn loot from loot table
loot spawn ~ ~ ~ loot worldtool:plant_tables/16
execute store result score @s worldtool run data get entity @e[type=minecraft:item,sort=nearest,limit=1] Item.Count
kill @e[type=minecraft:item,sort=nearest,limit=1]

# Each score value places a different plant
execute if score @s worldtool matches ..1 run setblock ~ ~ ~ minecraft:grass
execute if score @s worldtool matches 2 if block ~ ~1 ~ #worldtool:air_blocks run function worldtool:processes/greenery/double_plants/tall_grass
execute if score @s worldtool matches 3 run setblock ~ ~ ~ minecraft:dandelion
execute if score @s worldtool matches 4 run setblock ~ ~ ~ minecraft:poppy
execute if score @s worldtool matches 5 run setblock ~ ~ ~ minecraft:allium
execute if score @s worldtool matches 6 run setblock ~ ~ ~ minecraft:azure_bluet
execute if score @s worldtool matches 7 run setblock ~ ~ ~ minecraft:red_tulip
execute if score @s worldtool matches 8 run setblock ~ ~ ~ minecraft:orange_tulip
execute if score @s worldtool matches 9 run setblock ~ ~ ~ minecraft:white_tulip
execute if score @s worldtool matches 10 run setblock ~ ~ ~ minecraft:pink_tulip
execute if score @s worldtool matches 11 run setblock ~ ~ ~ minecraft:oxeye_daisy
execute if score @s worldtool matches 12 run setblock ~ ~ ~ minecraft:cornflower
execute if score @s worldtool matches 13 run setblock ~ ~ ~ minecraft:lily_of_the_valley
execute if score @s worldtool matches 14 if block ~ ~1 ~ #worldtool:air_blocks run function worldtool:processes/greenery/double_plants/lilac
execute if score @s worldtool matches 15 if block ~ ~1 ~ #worldtool:air_blocks run function worldtool:processes/greenery/double_plants/rose_bush
execute if score @s worldtool matches 16 if block ~ ~1 ~ #worldtool:air_blocks run function worldtool:processes/greenery/double_plants/peony
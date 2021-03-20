scoreboard players add $blocksplaced worldtool 1
# Spawn loot from loot table
loot spawn ~ ~ ~ loot worldtool:plant_tables/20
execute store result score @s worldtool run data get entity @e[type=minecraft:item,sort=nearest,limit=1] Item.Count
kill @e[type=minecraft:item,sort=nearest,limit=1]

# Each score value places a different plant
execute if score @s worldtool matches ..8 run setblock ~ ~ ~ minecraft:grass
execute if score @s worldtool matches 9..11 if block ~ ~1 ~ #worldtool:air_blocks run function worldtool:processes/greenery/double_plants/tall_grass
execute if score @s worldtool matches 12 run setblock ~ ~ ~ minecraft:dandelion
execute if score @s worldtool matches 13 run setblock ~ ~ ~ minecraft:poppy
execute if score @s worldtool matches 14 run setblock ~ ~ ~ minecraft:azure_bluet
execute if score @s worldtool matches 15 run setblock ~ ~ ~ minecraft:red_tulip
execute if score @s worldtool matches 16 run setblock ~ ~ ~ minecraft:orange_tulip
execute if score @s worldtool matches 17 run setblock ~ ~ ~ minecraft:white_tulip
execute if score @s worldtool matches 18 run setblock ~ ~ ~ minecraft:pink_tulip
execute if score @s worldtool matches 19 run setblock ~ ~ ~ minecraft:oxeye_daisy
execute if score @s worldtool matches 20 run setblock ~ ~ ~ minecraft:cornflower
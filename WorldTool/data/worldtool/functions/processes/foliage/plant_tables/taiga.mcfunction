scoreboard players add $blocksplaced worldtool 1
# Spawn loot from loot table
loot spawn ~ ~ ~ loot worldtool:plant_tables/16
execute store result score @s worldtool run data get entity @e[type=minecraft:item,sort=nearest,limit=1] Item.Count
kill @e[type=minecraft:item,sort=nearest,limit=1]

# Each score value places a different flower, or grass
execute if score @s worldtool matches ..2 run setblock ~ ~ ~ minecraft:grass
execute if score @s worldtool matches 3..8 run setblock ~ ~ ~ minecraft:fern
execute if score @s worldtool matches 9..11 if block ~ ~1 ~ #worldtool:air_blocks run function worldtool:processes/foliage/double_plants/large_fern
execute if score @s worldtool matches 12 run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=1]
execute if score @s worldtool matches 13..14 run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=2]
execute if score @s worldtool matches 15 run setblock ~ ~ ~ minecraft:dandelion
execute if score @s worldtool matches 16 run setblock ~ ~ ~ minecraft:poppy
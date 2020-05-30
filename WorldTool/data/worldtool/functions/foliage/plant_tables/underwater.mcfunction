scoreboard players add $blocksplaced worldtool 1
# Spawn loot from loot table
loot spawn ~ ~ ~ loot worldtool:plant_tables/16
execute store result score @s worldtool run data get entity @e[type=minecraft:item,sort=nearest,limit=1] Item.Count
kill @e[type=minecraft:item,sort=nearest,limit=1]

# Each score value places a different flower, or grass
execute if score @s worldtool matches ..8 run setblock ~ ~ ~ minecraft:seagrass
execute if score @s worldtool matches 9..12 if block ~ ~1 ~ minecraft:water run function worldtool:foliage/double_plants/tall_seagrass
execute if score @s worldtool matches 13..16 run setblock ~ ~ ~ minecraft:kelp
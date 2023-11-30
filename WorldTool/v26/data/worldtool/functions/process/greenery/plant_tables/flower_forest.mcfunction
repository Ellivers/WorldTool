# Called by worldtool:process/greenery/check_base
# Places a plant from the Flower Forest plant table

scoreboard players set #lcgMax worldtool 24
function worldtool:technical/common/lcg

execute if score #lcgResult worldtool matches ..8 run setblock ~ ~ ~ minecraft:short_grass
execute if score #lcgResult worldtool matches 9 if block ~ ~1 ~ #worldtool:air run function worldtool:process/greenery/double_plants/tall_grass
execute if score #lcgResult worldtool matches 10 run setblock ~ ~ ~ minecraft:dandelion
execute if score #lcgResult worldtool matches 11 run setblock ~ ~ ~ minecraft:poppy
execute if score #lcgResult worldtool matches 12 run setblock ~ ~ ~ minecraft:allium
execute if score #lcgResult worldtool matches 13 run setblock ~ ~ ~ minecraft:azure_bluet
execute if score #lcgResult worldtool matches 14 run setblock ~ ~ ~ minecraft:red_tulip
execute if score #lcgResult worldtool matches 15 run setblock ~ ~ ~ minecraft:orange_tulip
execute if score #lcgResult worldtool matches 16 run setblock ~ ~ ~ minecraft:white_tulip
execute if score #lcgResult worldtool matches 17 run setblock ~ ~ ~ minecraft:pink_tulip
execute if score #lcgResult worldtool matches 18 run setblock ~ ~ ~ minecraft:oxeye_daisy
execute if score #lcgResult worldtool matches 19 run setblock ~ ~ ~ minecraft:cornflower
execute if score #lcgResult worldtool matches 20 run setblock ~ ~ ~ minecraft:lily_of_the_valley
execute if score #lcgResult worldtool matches 21 if block ~ ~1 ~ #worldtool:air run function worldtool:process/greenery/double_plants/lilac
execute if score #lcgResult worldtool matches 22 if block ~ ~1 ~ #worldtool:air run function worldtool:process/greenery/double_plants/rose_bush
execute if score #lcgResult worldtool matches 23 if block ~ ~1 ~ #worldtool:air run function worldtool:process/greenery/double_plants/peony

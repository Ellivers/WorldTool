scoreboard players add $blocksplaced worldtool 1
scoreboard players set #maximum worldtool 15
# Get a random number
function worldtool:lcg

# Each score value places a different plant
execute if score #output worldtool matches ..0 run setblock ~ ~ ~ minecraft:grass
execute if score #output worldtool matches 1 if block ~ ~1 ~ #worldtool:air_blocks run function worldtool:processes/greenery/double_plants/tall_grass
execute if score #output worldtool matches 2 run setblock ~ ~ ~ minecraft:dandelion
execute if score #output worldtool matches 3 run setblock ~ ~ ~ minecraft:poppy
execute if score #output worldtool matches 4 run setblock ~ ~ ~ minecraft:allium
execute if score #output worldtool matches 5 run setblock ~ ~ ~ minecraft:azure_bluet
execute if score #output worldtool matches 6 run setblock ~ ~ ~ minecraft:red_tulip
execute if score #output worldtool matches 7 run setblock ~ ~ ~ minecraft:orange_tulip
execute if score #output worldtool matches 8 run setblock ~ ~ ~ minecraft:white_tulip
execute if score #output worldtool matches 9 run setblock ~ ~ ~ minecraft:pink_tulip
execute if score #output worldtool matches 10 run setblock ~ ~ ~ minecraft:oxeye_daisy
execute if score #output worldtool matches 11 run setblock ~ ~ ~ minecraft:cornflower
execute if score #output worldtool matches 12 run setblock ~ ~ ~ minecraft:lily_of_the_valley
execute if score #output worldtool matches 13 if block ~ ~1 ~ #worldtool:air_blocks run function worldtool:processes/greenery/double_plants/lilac
execute if score #output worldtool matches 14 if block ~ ~1 ~ #worldtool:air_blocks run function worldtool:processes/greenery/double_plants/rose_bush
execute if score #output worldtool matches 15 if block ~ ~1 ~ #worldtool:air_blocks run function worldtool:processes/greenery/double_plants/peony

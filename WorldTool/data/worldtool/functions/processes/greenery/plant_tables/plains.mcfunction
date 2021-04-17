scoreboard players add $blocksplaced worldtool 1
scoreboard players set #maximum worldtool 19
# Get a random number
function worldtool:lcg

# Each score value places a different plant
execute if score #output worldtool matches ..7 run setblock ~ ~ ~ minecraft:grass
execute if score #output worldtool matches 8..10 if block ~ ~1 ~ #worldtool:air_blocks run function worldtool:processes/greenery/double_plants/tall_grass
execute if score #output worldtool matches 11 run setblock ~ ~ ~ minecraft:dandelion
execute if score #output worldtool matches 12 run setblock ~ ~ ~ minecraft:poppy
execute if score #output worldtool matches 13 run setblock ~ ~ ~ minecraft:azure_bluet
execute if score #output worldtool matches 14 run setblock ~ ~ ~ minecraft:red_tulip
execute if score #output worldtool matches 15 run setblock ~ ~ ~ minecraft:orange_tulip
execute if score #output worldtool matches 16 run setblock ~ ~ ~ minecraft:white_tulip
execute if score #output worldtool matches 17 run setblock ~ ~ ~ minecraft:pink_tulip
execute if score #output worldtool matches 18 run setblock ~ ~ ~ minecraft:oxeye_daisy
execute if score #output worldtool matches 19 run setblock ~ ~ ~ minecraft:cornflower

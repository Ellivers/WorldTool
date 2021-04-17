scoreboard players add $blocksplaced worldtool 1
scoreboard players set #maximum worldtool 15
# Get a random number
function worldtool:lcg

# Each score value places a different plant
execute if score #output worldtool matches ..1 run setblock ~ ~ ~ minecraft:grass
execute if score #output worldtool matches 2..7 run setblock ~ ~ ~ minecraft:fern
execute if score #output worldtool matches 8..10 if block ~ ~1 ~ #worldtool:air_blocks run function worldtool:processes/greenery/double_plants/large_fern
execute if score #output worldtool matches 11 run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=1]
execute if score #output worldtool matches 12..13 run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=2]
execute if score #output worldtool matches 14 run setblock ~ ~ ~ minecraft:dandelion
execute if score #output worldtool matches 15 run setblock ~ ~ ~ minecraft:poppy

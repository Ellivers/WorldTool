scoreboard players add $blocksplaced worldtool 1
scoreboard players set #maximum worldtool 15
# Get a random number
function worldtool:lcg

# Each score value places a different plant
execute if score #output worldtool matches ..7 run setblock ~ ~ ~ minecraft:seagrass
execute if score #output worldtool matches 8..11 if block ~ ~1 ~ minecraft:water run function worldtool:processes/greenery/double_plants/tall_seagrass
execute if score #output worldtool matches 12..15 run setblock ~ ~ ~ minecraft:kelp

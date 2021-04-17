scoreboard players add $blocksplaced worldtool 1
scoreboard players set #maximum worldtool 15
# Get a random number
function worldtool:lcg

# Each score value places a different plant
execute if score #output worldtool matches ..2 if block ~1 ~ ~ #worldtool:air_blocks if block ~ ~ ~1 #worldtool:air_blocks if block ~-1 ~ ~ #worldtool:air_blocks if block ~ ~ ~-1 #worldtool:air_blocks run setblock ~ ~ ~ minecraft:cactus
execute if score #output worldtool matches 3..5 if block ~1 ~ ~ #worldtool:air_blocks if block ~ ~ ~1 #worldtool:air_blocks if block ~-1 ~ ~ #worldtool:air_blocks if block ~ ~ ~-1 #worldtool:air_blocks if block ~ ~1 ~ #worldtool:air_blocks run fill ~ ~ ~ ~ ~1 ~ minecraft:cactus
execute if score #output worldtool matches 6 if block ~1 ~ ~ #worldtool:air_blocks if block ~ ~ ~1 #worldtool:air_blocks if block ~-1 ~ ~ #worldtool:air_blocks if block ~ ~ ~-1 #worldtool:air_blocks if block ~ ~1 ~ #worldtool:air_blocks if block ~ ~2 ~ #worldtool:air_blocks run fill ~ ~ ~ ~ ~2 ~ minecraft:cactus
execute if score #output worldtool matches 7..15 run setblock ~ ~ ~ minecraft:dead_bush

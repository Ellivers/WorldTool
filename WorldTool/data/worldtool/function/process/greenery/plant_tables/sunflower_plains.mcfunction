# Called by worldtool:process/greenery/check_base
# Places a plant from the Sunflower Plains plant table

scoreboard players set #lcgMax worldtool 8
function worldtool:technical/common/lcg

scoreboard players operation #plantType worldtool = #lcgResult worldtool

# Flowers are 1 in 8
execute if score #plantType worldtool matches 0 run scoreboard players set #lcgMax worldtool 9
execute if score #plantType worldtool matches 1..6 run scoreboard players set #lcgMax worldtool 4
function worldtool:technical/common/lcg

execute if score #plantType worldtool matches 1..6 if score #lcgResult worldtool matches 0..2 run setblock ~ ~ ~ minecraft:grass
execute if score #plantType worldtool matches 1..6 if score #lcgResult worldtool matches 3 if block ~ ~1 ~ #worldtool:air run function worldtool:process/greenery/double_plants/tall_grass

execute if score #plantType worldtool matches 7 if block ~ ~1 ~ #worldtool:air run function worldtool:process/greenery/double_plants/sunflower

execute if score #plantType worldtool matches 0 if score #lcgResult worldtool matches 0 run setblock ~ ~ ~ minecraft:dandelion
execute if score #plantType worldtool matches 0 if score #lcgResult worldtool matches 1 run setblock ~ ~ ~ minecraft:poppy
execute if score #plantType worldtool matches 0 if score #lcgResult worldtool matches 2 run setblock ~ ~ ~ minecraft:azure_bluet
execute if score #plantType worldtool matches 0 if score #lcgResult worldtool matches 3 run setblock ~ ~ ~ minecraft:red_tulip
execute if score #plantType worldtool matches 0 if score #lcgResult worldtool matches 4 run setblock ~ ~ ~ minecraft:orange_tulip
execute if score #plantType worldtool matches 0 if score #lcgResult worldtool matches 5 run setblock ~ ~ ~ minecraft:white_tulip
execute if score #plantType worldtool matches 0 if score #lcgResult worldtool matches 6 run setblock ~ ~ ~ minecraft:pink_tulip
execute if score #plantType worldtool matches 0 if score #lcgResult worldtool matches 7 run setblock ~ ~ ~ minecraft:oxeye_daisy
execute if score #plantType worldtool matches 0 if score #lcgResult worldtool matches 8 run setblock ~ ~ ~ minecraft:cornflower

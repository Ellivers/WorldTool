# Called by worldtool:process/greenery/check_base
# Places a plant from the Taiga plant table

scoreboard players set #lcgMax worldtool 24
function worldtool:technical/common/lcg

execute if score #lcgResult worldtool matches 0 run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=1]
execute if score #lcgResult worldtool matches 1 run setblock ~ ~ ~ minecraft:dandelion
execute if score #lcgResult worldtool matches 2..3 run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=2]
execute if score #lcgResult worldtool matches 4 run setblock ~ ~ ~ minecraft:poppy
execute if score #lcgResult worldtool matches 5..7 if block ~ ~1 ~ #worldtool:air run function worldtool:process/greenery/double_plants/large_fern
execute if score #lcgResult worldtool matches 8..15 run setblock ~ ~ ~ minecraft:fern
execute if score #lcgResult worldtool matches 16.. run setblock ~ ~ ~ minecraft:short_grass

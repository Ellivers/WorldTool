# Called by worldtool:process/greenery/check_base
# Places a plant from the Ocean plant table

scoreboard players set #lcgMax worldtool 17
function worldtool:technical/common/lcg

execute if score #lcgResult worldtool matches ..8 run setblock ~ ~ ~ minecraft:seagrass
execute if score #lcgResult worldtool matches 9..12 if block ~ ~1 ~ minecraft:water run function worldtool:process/greenery/double_plants/tall_seagrass
execute if score #lcgResult worldtool matches 13.. run setblock ~ ~ ~ minecraft:kelp

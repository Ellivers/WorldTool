# Called by worldtool:process/greenery/check_base
# Places a plant from the Desert plant table

scoreboard players set #lcgMax worldtool 17
function worldtool:technical/common/lcg

execute if score #lcgResult worldtool matches ..3 if block ~1 ~ ~ #worldtool:air if block ~ ~ ~1 #worldtool:air if block ~-1 ~ ~ #worldtool:air if block ~ ~ ~-1 #worldtool:air run setblock ~ ~ ~ minecraft:cactus
execute if score #lcgResult worldtool matches 4..6 if block ~1 ~ ~ #worldtool:air if block ~ ~ ~1 #worldtool:air if block ~-1 ~ ~ #worldtool:air if block ~ ~ ~-1 #worldtool:air if block ~ ~1 ~ #worldtool:air run fill ~ ~ ~ ~ ~1 ~ minecraft:cactus
execute if score #lcgResult worldtool matches 7 if block ~1 ~ ~ #worldtool:air if block ~ ~ ~1 #worldtool:air if block ~-1 ~ ~ #worldtool:air if block ~ ~ ~-1 #worldtool:air if block ~ ~1 ~ #worldtool:air if block ~ ~2 ~ #worldtool:air run fill ~ ~ ~ ~ ~2 ~ minecraft:cactus
execute if score #lcgResult worldtool matches 8.. run setblock ~ ~ ~ minecraft:dead_bush

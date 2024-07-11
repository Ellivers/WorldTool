# Called by worldtool:process/greenery/check_base
# Places a plant from the Warm Ocean plant table

scoreboard players set #lcgMax worldtool 4
function worldtool:technical/common/lcg

scoreboard players operation #plantType worldtool = #lcgResult worldtool

execute if score #plantType worldtool matches 0..2 run scoreboard players set #lcgMax worldtool 14
execute if score #plantType worldtool matches 3 run scoreboard players set #lcgMax worldtool 10
function worldtool:technical/common/lcg

execute if score #plantType worldtool matches 0..3 if score #lcgResult worldtool matches ..2 if block ~ ~1 ~ minecraft:water run function worldtool:process/greenery/double_plants/tall_seagrass
execute if score #plantType worldtool matches 0..3 if score #lcgResult worldtool matches 3..6 run setblock ~ ~ ~ minecraft:sea_pickle
execute if score #plantType worldtool matches 0..3 if score #lcgResult worldtool matches 7.. run setblock ~ ~ ~ minecraft:seagrass

# Fun fact: corals are not plants
execute if score #plantType worldtool matches 3 if score #lcgResult worldtool matches 0 run setblock ~ ~ ~ minecraft:fire_coral
execute if score #plantType worldtool matches 3 if score #lcgResult worldtool matches 1 run setblock ~ ~ ~ minecraft:horn_coral
execute if score #plantType worldtool matches 3 if score #lcgResult worldtool matches 2 run setblock ~ ~ ~ minecraft:tube_coral
execute if score #plantType worldtool matches 3 if score #lcgResult worldtool matches 3 run setblock ~ ~ ~ minecraft:brain_coral
execute if score #plantType worldtool matches 3 if score #lcgResult worldtool matches 4 run setblock ~ ~ ~ minecraft:bubble_coral
execute if score #plantType worldtool matches 3 if score #lcgResult worldtool matches 5 run setblock ~ ~ ~ minecraft:fire_coral_fan
execute if score #plantType worldtool matches 3 if score #lcgResult worldtool matches 6 run setblock ~ ~ ~ minecraft:horn_coral_fan
execute if score #plantType worldtool matches 3 if score #lcgResult worldtool matches 7 run setblock ~ ~ ~ minecraft:tube_coral_fan
execute if score #plantType worldtool matches 3 if score #lcgResult worldtool matches 8 run setblock ~ ~ ~ minecraft:brain_coral_fan
execute if score #plantType worldtool matches 3 if score #lcgResult worldtool matches 9 run setblock ~ ~ ~ minecraft:bubble_coral_fan

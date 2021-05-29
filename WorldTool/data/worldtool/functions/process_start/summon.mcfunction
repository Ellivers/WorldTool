# Called by worldtool:process_start/start
# Starts a function, setting the writer entity

scoreboard players operation #ID_temp worldtool = @s wt.ID

kill 35c1ab68-9d4c-11eb-a8b3-0242ac130003
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool","wt.writer"],CustomName:'"WorldTool Writer"', UUID:[I; 901884776, -1655959061, -1464663486, -1408040957]}
data modify entity 35c1ab68-9d4c-11eb-a8b3-0242ac130003 Tags append from entity @s Tags[]
execute as 35c1ab68-9d4c-11eb-a8b3-0242ac130003 run function worldtool:process_start/summon.writer

# Called by worldtool:process_start/start
# Starts a process, creating the process entity/entities

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute unless entity @s run scoreboard players set #ID_temp worldtool 0

kill 35c1ab68-9d4c-11eb-a8b3-0242ac130003
kill 9880ccfe-fdf6-4538-838a-ddc75a54608e

# UUID: 35c1ab68-9d4c-11eb-a8b3-0242ac130003
execute align xyz run summon minecraft:marker ~.5 ~.5 ~.5 {Tags: ["worldtool","wt.process_entity"], CustomName:'"WorldTool Process Entity"', UUID:[I; 901884776, -1655959061, -1464663486, -1408040957]}
execute as 35c1ab68-9d4c-11eb-a8b3-0242ac130003 run function worldtool:process_start/summon.entity

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]

# UUID: 9880ccfe-fdf6-4538-838a-ddc75a54608e
execute if data storage worldtool:storage Temp.Process{Tags:["wt.secondary_process_entity"]} align xyz run summon minecraft:marker ~.5 ~.5 ~.5 {Tags: ["worldtool","wt.secondary_process_entity"], CustomName:'"WorldTool Secondary Process Entity"', UUID:[I; -1736389378, -34192072, -2088051257, 1515479182]}
execute if data storage worldtool:storage Temp.Process{Tags:["wt.secondary_process_entity"]} as 9880ccfe-fdf6-4538-838a-ddc75a54608e run function worldtool:process_start/summon.secondary

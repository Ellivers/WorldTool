# Called by worldtool:process/load
# Gives an error that the process entity can't be found

scoreboard players set #processEntityNotFound worldtool 1

execute store result score #ID_temp worldtool run data get storage worldtool:storage Processes[-1].Owner

scoreboard players set #success worldtool 0

execute as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:ui/error/process_entity_not_found

execute if score #success worldtool matches 0 run data modify storage worldtool:storage Temp.LogEntry set value {Message:'{"nbt":"Translation.\\"error.process_entity_not_found\\"","color":"red","storage":"worldtool:storage"}',Type:"error"}
execute if score #success worldtool matches 0 run function worldtool:technical/cmd/log/add

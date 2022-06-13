# Called by worldtool:process/load.tags
# Messages that the process entity has been found again

scoreboard players set #writerNotFoundError worldtool 0

execute store result score #ID_temp worldtool run data get storage worldtool:storage Processes[-1].Owner

execute as @a if score @s wt.ID = #ID_temp worldtool run tellraw @s ["\n",{"nbt":"Translation.\"info.writer_found\"","storage": "worldtool:storage"},"\n"]

execute unless data storage worldtool:storage Processes[-1].Owner run data modify storage worldtool:storage Temp.LogMessage set value '{"nbt":"Translation.\\"info.writer_found\\"","storage":"worldtool:storage"}'
execute unless data storage worldtool:storage Processes[-1].Owner run function worldtool:technical/cmd/add_to_log

# Called manually
# Lists all log entries

tellraw @s {"nbt":"Translation.\"info.log_title\"","storage": "worldtool:storage","color": "gold"}
scoreboard players set #temp worldtool 0
scoreboard players set #temp2 worldtool 0
execute store result score #temp2 worldtool run data get storage worldtool:storage Log
function worldtool:technical/cmd_log_loop

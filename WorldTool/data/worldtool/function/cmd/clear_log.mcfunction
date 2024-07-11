# Called manually
# Resets the log

data modify storage worldtool:storage Log set value []
tellraw @s {"nbt":"Translation.\"info.log_cleared\"","storage": "worldtool:storage"}

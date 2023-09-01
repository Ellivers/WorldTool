# Called by worldtool:technical/cmd/log/loop/main
# Displays the log message with the time in seconds

execute unless score #timeDifference worldtool matches 1 run tellraw @s [{"nbt":"Translation.\"info.log.time.seconds\"","storage": "worldtool:storage","interpret": true},{"nbt":"Log[-1].Message","storage": "worldtool:storage","interpret": true}]
execute if score #timeDifference worldtool matches 1 run tellraw @s [{"nbt":"Translation.\"info.log.time.second\"","storage": "worldtool:storage"},{"nbt":"Log[-1].Message","storage": "worldtool:storage","interpret": true}]

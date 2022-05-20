# Called by worldtool:technical/cmd/log_loop/main
# Displays the log message with the time in days

scoreboard players operation #timeDifference worldtool /= #86400 worldtool

execute unless score #timeDifference worldtool matches 1 run tellraw @s [{"nbt":"Translation.\"info.log.time.days\"","storage": "worldtool:storage","interpret": true},{"nbt":"Log[0].Message","storage": "worldtool:storage","interpret": true}]
execute if score #timeDifference worldtool matches 1 run tellraw @s [{"nbt":"Translation.\"info.log.time.day\"","storage": "worldtool:storage"},{"nbt":"Log[0].Message","storage": "worldtool:storage","interpret": true}]

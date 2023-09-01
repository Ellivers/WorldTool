# Called by worldtool:technical/cmd/log/loop/main
# Displays the log message with the time in minutes

scoreboard players operation #timeDifference worldtool /= #60 worldtool

execute unless score #timeDifference worldtool matches 1 run tellraw @s [{"nbt":"Translation.\"info.log.time.minutes\"","storage": "worldtool:storage","interpret": true},{"nbt":"Log[-1].Message","storage": "worldtool:storage","interpret": true}]
execute if score #timeDifference worldtool matches 1 run tellraw @s [{"nbt":"Translation.\"info.log.time.minute\"","storage": "worldtool:storage"},{"nbt":"Log[-1].Message","storage": "worldtool:storage","interpret": true}]

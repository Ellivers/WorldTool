# Checks if the position is inside the world

scoreboard players set #success worldtool 0
execute store success score #success worldtool if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all

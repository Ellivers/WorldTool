# Called by various functions
# Corrects the X position

execute if score #tempXDir worldtool matches -1 store success score #varMoved worldtool run scoreboard players add #processPosX worldtool 1
execute if score #tempXDir worldtool matches 1 store success score #varMoved worldtool run scoreboard players remove #processPosX worldtool 1

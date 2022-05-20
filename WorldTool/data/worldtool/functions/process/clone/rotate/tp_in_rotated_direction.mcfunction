# Called by various functions
# Teleports in the specified direction

execute if score #offsetX worldtool matches 1 at @s run tp ~1 ~ ~
execute if score #offsetX worldtool matches -1 at @s run tp ~-1 ~ ~
execute if score #offsetY worldtool matches 1 at @s run tp ~ ~1 ~
execute if score #offsetY worldtool matches -1 at @s run tp ~ ~-1 ~
execute if score #offsetZ worldtool matches 1 at @s run tp ~ ~ ~1
execute if score #offsetZ worldtool matches -1 at @s run tp ~ ~ ~-1

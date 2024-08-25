scoreboard players set #tempXDir worldtool -1
scoreboard players remove #processPosX worldtool 1
execute store success score #varMoved worldtool run tp ~-1 ~ ~
execute positioned ~-1 ~ ~ run function worldtool:process/fill/main

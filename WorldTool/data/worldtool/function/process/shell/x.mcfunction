scoreboard players set #tempDir worldtool 1
scoreboard players add #processPosX worldtool 1
execute store success score #hasMoved worldtool run tp ~1 ~ ~
execute positioned ~1 ~ ~ run function worldtool:process/shell/main

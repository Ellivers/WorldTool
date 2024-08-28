scoreboard players operation #pos2x worldtool >< #pos1x worldtool

scoreboard players remove #processPosY worldtool 1

execute store success score #hasMoved worldtool run tp ~ ~-1 ~
execute positioned ~ ~-1 ~ run function worldtool:process/filter_measure/main

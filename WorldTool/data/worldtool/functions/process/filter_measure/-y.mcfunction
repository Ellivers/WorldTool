scoreboard players operation #pos2x worldtool = #pos1x worldtool
scoreboard players operation #pos1x worldtool = #processPosX worldtool

scoreboard players remove #processPosY worldtool 1

tp ~ ~-1 ~
execute positioned ~ ~-1 ~ run function worldtool:process/filter_measure/main

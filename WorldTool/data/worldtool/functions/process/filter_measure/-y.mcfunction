scoreboard players operation #pos2x worldtool = #pos1x worldtool
scoreboard players operation #pos1x worldtool = #writerPosX worldtool

scoreboard players remove #writerPosY worldtool 1
execute if score #filterSuccess worldtool matches 1.. run scoreboard players operation #minY worldtool < #writerPosY worldtool

tp ~ ~-1 ~
execute positioned ~ ~-1 ~ run function worldtool:process/filter_measure/main

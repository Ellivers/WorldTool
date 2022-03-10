scoreboard players operation #pos2y worldtool = #pos1y worldtool
scoreboard players operation #pos1y worldtool = #writerPosY worldtool
scoreboard players operation #pos2x worldtool = #pos1x worldtool
scoreboard players operation #pos1x worldtool = #writerPosX worldtool

scoreboard players remove #writerPosZ worldtool 1
execute if score #filterSuccess worldtool matches 1.. run scoreboard players operation #minZ worldtool < #writerPosZ worldtool

tp ~ ~ ~-1
execute positioned ~ ~ ~-1 run function worldtool:process/filter_measure/main

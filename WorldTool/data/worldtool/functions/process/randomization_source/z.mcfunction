scoreboard players operation #pos2x worldtool = #pos1x worldtool
scoreboard players operation #pos1x worldtool = #writerPosX worldtool

scoreboard players add #writerPosZ worldtool 1
tp ~ ~ ~1
execute positioned ~ ~ ~1 run function worldtool:process/randomization_source/main

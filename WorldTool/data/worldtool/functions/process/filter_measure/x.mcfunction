scoreboard players add #writerPosX worldtool 1
execute if score #filterSuccess worldtool matches 1.. run scoreboard players operation #maxX worldtool > #writerPosX worldtool

tp ~1 ~ ~
execute positioned ~1 ~ ~ run function worldtool:process/filter_measure/main

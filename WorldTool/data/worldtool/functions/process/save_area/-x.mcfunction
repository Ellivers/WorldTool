scoreboard players operation #writerPosX worldtool -= $templateSizeLimit worldtool

execute store result entity @s Pos[0] double 1 run scoreboard players get #writerPosX worldtool

execute at @s run function worldtool:process/save_area/main

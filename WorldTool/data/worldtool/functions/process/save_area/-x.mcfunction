scoreboard players operation #processPosX worldtool -= $templateSizeLimit worldtool

execute store result entity @s Pos[0] double 1 run scoreboard players get #processPosX worldtool

execute at @s run function worldtool:process/save_area/main

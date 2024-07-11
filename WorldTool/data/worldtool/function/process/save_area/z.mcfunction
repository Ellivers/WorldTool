scoreboard players operation #pos2x worldtool = #pos1x worldtool
scoreboard players operation #pos1x worldtool = #processPosX worldtool

scoreboard players operation #processPosZ worldtool += $templateSizeLimit worldtool

execute store result entity @s Pos[2] double 1 run scoreboard players get #processPosZ worldtool

execute at @s run function worldtool:process/save_area/main

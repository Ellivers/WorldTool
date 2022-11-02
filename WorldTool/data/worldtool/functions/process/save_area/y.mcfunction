scoreboard players operation #pos2z worldtool = #pos1z worldtool
scoreboard players operation #pos1z worldtool = #processPosZ worldtool
scoreboard players operation #pos2x worldtool = #pos1x worldtool
scoreboard players operation #pos1x worldtool = #processPosX worldtool

scoreboard players operation #processPosY worldtool += $templateSizeLimit worldtool

execute store result entity @s Pos[1] double 1 run scoreboard players get #processPosY worldtool

execute at @s run function worldtool:process/save_area/main

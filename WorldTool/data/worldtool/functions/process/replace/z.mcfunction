scoreboard players operation $pos2x worldtool = $pos1x worldtool
scoreboard players operation $pos1x worldtool = $drawingposX worldtool

scoreboard players add $drawingposZ worldtool 1
tp ~ ~ ~1
execute positioned ~ ~ ~1 run function worldtool:process/replace/main

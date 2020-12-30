scoreboard players operation $pos2z worldtool = $pos1z worldtool
scoreboard players operation $pos1z worldtool = $drawingposZ worldtool
scoreboard players operation $pos2x worldtool = $pos1x worldtool
scoreboard players operation $pos1x worldtool = $drawingposX worldtool

scoreboard players add $drawingposY worldtool 1
tp ~ ~1 ~
execute positioned ~ ~1 ~ run function worldtool:processes/random/2
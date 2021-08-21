scoreboard players operation $pos2y worldtool = $pos1y worldtool
scoreboard players operation $pos1y worldtool = $drawingposY worldtool
scoreboard players operation $pos2x worldtool = $pos1x worldtool
scoreboard players operation $pos1x worldtool = $drawingposX worldtool

scoreboard players remove $drawingposZ worldtool 1
tp ~ ~ ~-1
execute unless score #checkeredZ worldtool matches 0 positioned ~ ~ ~-1 run function worldtool:processes/checkered/switch
execute if score #checkeredZ worldtool matches 0 positioned ~ ~ ~-1 run function worldtool:processes/checkered/run

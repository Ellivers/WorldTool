scoreboard players operation $pos2x worldtool = $pos1x worldtool
scoreboard players operation $pos1x worldtool = $drawingposX worldtool

scoreboard players remove $drawingposY worldtool 1
tp ~ ~-1 ~
execute unless score #checkeredY worldtool matches 0 positioned ~ ~-1 ~ run function worldtool:checkered/switch
execute if score #checkeredY worldtool matches 0 positioned ~ ~-1 ~ run function worldtool:checkered/run

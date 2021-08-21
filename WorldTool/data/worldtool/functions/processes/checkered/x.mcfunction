scoreboard players add $drawingposX worldtool 1
tp ~1 ~ ~
execute unless score #checkeredX worldtool matches 0 positioned ~1 ~ ~ run function worldtool:processes/checkered/switch
execute if score #checkeredX worldtool matches 0 positioned ~1 ~ ~ run function worldtool:processes/checkered/run

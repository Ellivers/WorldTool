scoreboard players operation #pos2z worldtool = #pos1z worldtool
scoreboard players operation #pos1z worldtool = #processPosZ worldtool
scoreboard players operation #pos2x worldtool = #pos1x worldtool
scoreboard players operation #pos1x worldtool = #processPosX worldtool

scoreboard players add #processPosY worldtool 1
execute as 9880ccfe-fdf6-4538-838a-ddc75a54608e at @s run tp ~ ~1 ~
tp ~ ~1 ~
execute positioned ~ ~1 ~ run function worldtool:process/clone/normal/main

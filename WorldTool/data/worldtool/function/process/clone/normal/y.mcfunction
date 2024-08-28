scoreboard players operation #pos2z worldtool >< #pos1z worldtool
scoreboard players operation #pos2x worldtool >< #pos1x worldtool

scoreboard players set #tempDir worldtool 2
execute as 9880ccfe-fdf6-4538-838a-ddc75a54608e at @s store success score #hasMoved2 worldtool run tp ~ ~1 ~
scoreboard players add #processPosY worldtool 1
execute store success score #hasMoved worldtool run tp ~ ~1 ~
execute positioned ~ ~1 ~ run function worldtool:process/clone/normal/main

scoreboard players add #processPosX worldtool 1

execute if entity @s[tag=wt.process.checkered.alternate.x] store result score #placeBlock worldtool if score #placeBlock worldtool matches 0

tp ~1 ~ ~
execute positioned ~1 ~ ~ run function worldtool:process/checkered/main

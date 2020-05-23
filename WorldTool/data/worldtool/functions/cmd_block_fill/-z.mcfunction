execute at @s run setblock ~ ~ ~ minecraft:chain_command_block[facing=north]
scoreboard players operation $pos2y worldtool = $pos1y worldtool
scoreboard players operation $pos1y worldtool = $drawingposY worldtool
scoreboard players operation $pos2x worldtool = $pos1x worldtool
scoreboard players operation $pos1x worldtool = $drawingposX worldtool

scoreboard players remove $drawingposZ worldtool 1
tp ~ ~ ~-1
execute positioned ~ ~ ~-1 run function worldtool:cmd_block_fill/run
execute at @s run setblock ~ ~ ~ minecraft:chain_command_block[facing=up]
scoreboard players operation $pos2x worldtool = $pos1x worldtool
scoreboard players operation $pos1x worldtool = $drawingposX worldtool

scoreboard players add $drawingposY worldtool 1
tp ~ ~1 ~
execute positioned ~ ~1 ~ run function worldtool:processes/cmd_block_fill/run
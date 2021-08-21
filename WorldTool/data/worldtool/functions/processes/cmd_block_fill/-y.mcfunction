execute at @s run setblock ~ ~ ~ minecraft:chain_command_block[facing=down]
scoreboard players operation $pos2x worldtool = $pos1x worldtool
scoreboard players operation $pos1x worldtool = $drawingposX worldtool

scoreboard players remove $drawingposY worldtool 1
tp ~ ~-1 ~
execute positioned ~ ~-1 ~ run function worldtool:processes/cmd_block_fill/run
execute at @s run setblock ~ ~ ~ minecraft:chain_command_block[facing=west]
scoreboard players remove $drawingposX worldtool 1
tp ~-1 ~ ~
execute positioned ~-1 ~ ~ run function worldtool:cmd_block_fill/run
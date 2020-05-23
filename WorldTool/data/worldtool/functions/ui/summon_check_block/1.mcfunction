execute store result score #currentblockheight worldtool run data get entity @s Pos[1]
scoreboard players set #checkblockheight worldtool 0
execute unless block ~ ~ ~ #worldtool:air_blocks positioned ~ ~1 ~ run function worldtool:ui/summon_check_block/ray
execute if block ~ ~ ~ #worldtool:air_blocks run function worldtool:ui/summon_check_block/2
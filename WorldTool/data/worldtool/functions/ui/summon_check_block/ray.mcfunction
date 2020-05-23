scoreboard players add #checkblockheight worldtool 1
scoreboard players add #currentblockheight worldtool 1
execute unless block ~ ~ ~ #worldtool:air_blocks unless score #checkblockheight worldtool matches 200.. positioned ~ ~1 ~ run function worldtool:ui/summon_check_block/ray
execute if block ~ ~ ~ #worldtool:air_blocks run function worldtool:ui/summon_check_block/2
execute if score #checkblockheight worldtool matches 200.. run function worldtool:ui/summon_check_block/error
execute if score #currentblockheight worldtool matches 256.. run function worldtool:ui/summon_check_block/error
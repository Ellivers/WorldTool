# Called by worldtool:use_tool/hold/ray_hit/load
# Summons a highlighting shulker entity

tag @s add wt.highlighting_block

execute summon minecraft:shulker run function worldtool:use_tool/hold/ray_hit/summon.entity

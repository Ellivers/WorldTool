# Called by worldtool:use_tool/hold/ray_hit/load
# Summons a highlighting shulker entity

tag @s add wt.highlighting_block

summon minecraft:shulker ~ ~ ~ {ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],NoAI:1b,Silent:1b,Glowing:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",Tags:["worldtool","wt.highlight_entity","wt.temp","smithed.strict"],AbsorptionAmount:2e900f}

execute as @e[type=minecraft:shulker,tag=worldtool,tag=wt.highlight_entity,tag=wt.temp,sort=nearest,limit=1] run function worldtool:use_tool/hold/ray_hit/summon.entity

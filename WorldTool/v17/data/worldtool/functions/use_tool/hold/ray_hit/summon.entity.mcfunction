# Called by worldtool:use_tool/hold/ray_hit/summon
# Commands to run as the summoned entity

data merge entity @s {active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:0b}],NoAI:1b,Silent:1b,Glowing:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",Tags:["worldtool","wt.highlight_entity"],AbsorptionAmount:2e900f}

scoreboard players operation @s wt.ID = #ID_temp worldtool

execute if score #temp worldtool matches 0 run team join wt.pos
execute if score #temp worldtool matches 1 run team join wt.pos1
execute if score #temp worldtool matches 2 run team join wt.pos2

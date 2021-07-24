# Called by worldtool:pick_block/general/load
# Pick based on what the input entity is set to accept

execute unless entity @s[tag=!wt.primary,tag=!wt.both] run clone 0 254 13 0 254 13 ~1 ~ ~ replace move
execute if entity @s[tag=wt.secondary] run clone 0 254 13 0 254 13 ~-1 ~ ~ replace move

# Called by worldtool:pick_block/general_tool/load
# Pick based on what the input entity is set to accept

execute unless entity @s[tag=!wt.primary,tag=!wt.both] run clone 27451 3 19 27451 3 19 ~1 ~ ~ replace move
execute if entity @s[tag=wt.secondary] run clone 27451 3 19 27451 3 19 ~-1 ~ ~ replace move

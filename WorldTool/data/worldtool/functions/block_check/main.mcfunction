# Called by worldtool:tick

# The block selection system
# Hmm... could there be a block here?

# Splits up checks for the primary block and the secondary block
execute unless entity @s[tag=!primary,tag=!both] unless block ~1 ~ ~ minecraft:air run function worldtool:block_check/primary
execute unless entity @s[tag=!secondary,tag=!both] unless block ~-1 ~ ~ minecraft:air run function worldtool:block_check/secondary
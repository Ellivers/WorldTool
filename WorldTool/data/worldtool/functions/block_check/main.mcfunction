# Called by worldtool:tick

# The block selection system
# Hmm... could there be a block here?

# Splits up checks for the primary block and the secondary block
execute at @a if score @s wt_ID = @p wt_ID run scoreboard players operation #ID_temp wt_ID = @p wt_ID
execute unless entity @s[tag=!primary,tag=!both] unless block ~1 ~ ~ minecraft:air as @a[tag=!wt_waiting_in_menu] if score @s wt_ID = #ID_temp wt_ID at @s run function worldtool:block_check/primary
execute unless entity @s[tag=!secondary,tag=!both] unless block ~-1 ~ ~ minecraft:air as @a[tag=!wt_waiting_in_menu] if score @s wt_ID = #ID_temp wt_ID at @s run function worldtool:block_check/secondary

# Called by worldtool:technical/tick

# The block selection system
# Hmm... could there be a block here?

# Splits up checks for the primary block and the secondary block
scoreboard players operation #ID_temp worldtool = @s wt.ID
scoreboard players set #temp worldtool 0
execute as @a if score @s wt.ID = #ID_temp worldtool run scoreboard players set #temp worldtool 1
execute unless entity @s[tag=!wt.primary,tag=!wt.both] unless block ~1 ~ ~ minecraft:air as @a if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:input_check/primary
execute unless entity @s[tag=!wt.secondary,tag=!wt.both] unless block ~-1 ~ ~ minecraft:air as @a if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:input_check/secondary

execute if score #temp worldtool matches 0 run function worldtool:input_check/stop

# Called by worldtool:click
# Gives a unique ID to each player
scoreboard players add #IDLevel worldtool 1
scoreboard players operation @s wt_ID = #IDLevel worldtool

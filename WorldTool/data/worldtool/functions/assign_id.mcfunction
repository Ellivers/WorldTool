# Called by worldtool:click
# Gives a unique ID to the executor
scoreboard players add #IDLevel worldtool 1
scoreboard players operation @s wt_ID = #IDLevel worldtool

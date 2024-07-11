# Called by worldtool:use_tool/use
# Assigns an ID to players that don't have it yet

scoreboard players add #ID worldtool 1
scoreboard players operation @s wt.ID = #ID worldtool

# Called by worldtool:technical/upgrade_version
# Properly removes old entities

execute unless entity @s[tag=!pos1,tag=!pos2] if score @s worldtool matches 1.. run function worldtool:technical/common/forceload/remove

kill @s

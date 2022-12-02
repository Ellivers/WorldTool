# Called by various functions
# Common commands for General Tool positions

scoreboard players operation @s wt.ID = #ID_temp worldtool
execute if score $forceLoadPositions worldtool matches 1.. store result score @s[tag=wt.can_forceload] worldtool run forceload add ~ ~
function worldtool:technical/common/temp_pos1

# Called by worldtool:process_start/general/load
# Checks the size of the selected area

scoreboard players set #success worldtool 1

tag @s add wt.no_message
function worldtool:measure/area/load

execute unless score $sizeWarnLimit worldtool matches 0 if score #totalArea worldtool >= $sizeWarnLimit worldtool run function worldtool:ui/warning/size

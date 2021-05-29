# Called by worldtool:process_start/common/load
# Checks the size of the selected area

scoreboard players set #success worldtool 1

tag @s add wt.no_message
function worldtool:measure/load

execute if score #totalArea worldtool >= $sizeWarnLimit worldtool run function worldtool:ui/warning/size

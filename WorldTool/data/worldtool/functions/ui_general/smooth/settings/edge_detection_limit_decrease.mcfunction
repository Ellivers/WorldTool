# Called by worldtool:ui_general/smooth/menu
# Decreases the edge detection limit by 1 block

execute unless score @s wt.size matches 1.. run scoreboard players set @s wt.size 1
execute if score @s wt.size matches 2.. run scoreboard players remove @s wt.size 1

function worldtool:ui_general/smooth/menu

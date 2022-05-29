# Called by worldtool:ui_general/options/settings/menu
# Toggles a setting

scoreboard players operation #temp worldtool = $forceLoadPositions worldtool
execute unless score #temp worldtool matches 1.. run scoreboard players set $forceLoadPositions worldtool 1
execute if score #temp worldtool matches 1.. run scoreboard players set $forceLoadPositions worldtool 0

execute if score $forceLoadPositions worldtool matches 0 as @e[tag=worldtool,tag=wt.can_forceload,scores={worldtool=1}] store success score @s worldtool run forceload remove ~ ~
execute if score $forceLoadPositions worldtool matches 1 as @e[tag=worldtool,tag=wt.can_forceload] store success score @s worldtool run forceload add ~ ~

function worldtool:ui_general/options/settings/menu

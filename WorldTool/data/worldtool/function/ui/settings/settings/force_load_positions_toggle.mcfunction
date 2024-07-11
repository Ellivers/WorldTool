# Called by worldtool:ui/settings/menu
# Toggles a setting

scoreboard players operation #temp worldtool = $forceLoadPositions worldtool
execute unless score #temp worldtool matches 1.. run scoreboard players set $forceLoadPositions worldtool 1
execute if score #temp worldtool matches 1.. run scoreboard players set $forceLoadPositions worldtool 0

execute if score $forceLoadPositions worldtool matches 0 as @e[tag=worldtool,tag=wt.can_forceload,scores={worldtool=1..}] at @s run function worldtool:technical/common/forceload/remove
execute if score $forceLoadPositions worldtool matches 1 as @e[tag=worldtool,tag=wt.can_forceload] at @s run function worldtool:technical/common/forceload/add

function worldtool:ui/settings/menu

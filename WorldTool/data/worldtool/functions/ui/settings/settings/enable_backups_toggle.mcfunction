# Called by worldtool:ui/settings/menu
# Toggles a setting

scoreboard players operation #temp worldtool = $enableBackups worldtool
execute unless score #temp worldtool matches 1.. run scoreboard players set $enableBackups worldtool 1
execute if score #temp worldtool matches 1.. run scoreboard players set $enableBackups worldtool 0

execute if score #temp worldtool matches 1.. run function worldtool:ui/settings/menu

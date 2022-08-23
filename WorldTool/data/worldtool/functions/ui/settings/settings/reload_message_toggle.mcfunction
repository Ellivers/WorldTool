# Called by worldtool:ui/settings/menu
# Toggles a setting

scoreboard players operation #temp worldtool = $reloadMessage worldtool
execute unless score #temp worldtool matches 1.. run scoreboard players set $reloadMessage worldtool 1
execute if score #temp worldtool matches 1.. run scoreboard players set $reloadMessage worldtool 0

function worldtool:ui/settings/menu

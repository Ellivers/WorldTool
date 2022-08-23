# Called by worldtool:ui/settings/menu
# Increases a setting

scoreboard players add $maxBackups worldtool 2

scoreboard players operation #temp worldtool = $maxBackups worldtool
scoreboard players operation #temp worldtool %= #2 worldtool
execute unless score #temp worldtool matches 0 run scoreboard players add $maxBackups worldtool 1

function worldtool:ui/settings/menu

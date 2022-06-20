# Called by worldtool:ui_general/options/settings/menu
# Decreases a setting

execute unless score $maxBackups worldtool matches ..2 run scoreboard players remove $maxBackups worldtool 2

scoreboard players operation #temp worldtool = $maxBackups worldtool
scoreboard players operation #temp worldtool %= #2 worldtool
execute unless score #temp worldtool matches 0 run scoreboard players add $maxBackups worldtool 1

function worldtool:ui_general/options/settings/menu

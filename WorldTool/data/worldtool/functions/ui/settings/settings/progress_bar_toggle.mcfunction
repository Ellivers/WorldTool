# Called by worldtool:ui/settings/menu
# Toggles a setting

scoreboard players operation #temp worldtool = $progressBar worldtool
execute unless score #temp worldtool matches 1.. run scoreboard players set $progressBar worldtool 1
execute if score #temp worldtool matches 1.. run scoreboard players set $progressBar worldtool 0

execute if score $progressBar worldtool matches 0 run bossbar set worldtool:progress visible false

function worldtool:ui/settings/menu

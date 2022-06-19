# Called by worldtool:ui_general/options/settings/menu
# Toggles a setting

scoreboard players operation #temp worldtool = $enableBackups worldtool
execute unless score #temp worldtool matches 1.. run function worldtool:ui_general/options/settings/settings/enable_backups_prompt
execute if score #temp worldtool matches 1.. run scoreboard players set $enableBackups worldtool 0

execute if score #temp worldtool matches 1.. run function worldtool:ui_general/options/settings/menu

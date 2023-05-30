# Called by worldtool:ui/settings/menu
# Toggles a setting

scoreboard players operation #temp worldtool = $keepMenuOptions worldtool
execute unless score #temp worldtool matches 1.. run scoreboard players set $keepMenuOptions worldtool 1
execute if score #temp worldtool matches 1.. run scoreboard players set $keepMenuOptions worldtool 0

execute if score $keepMenuOptions worldtool matches 0 run function worldtool:ui_general/remove_submenu_tags/other

function worldtool:ui/settings/menu

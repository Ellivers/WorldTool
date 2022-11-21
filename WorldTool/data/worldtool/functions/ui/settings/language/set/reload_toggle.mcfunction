# Called by worldtool:ui/settings/language/menu
# Toggle language reloading when the data pack is reloaded

scoreboard players operation #temp worldtool = $reloadLanguage worldtool
execute unless score #temp worldtool matches 1.. run scoreboard players set $reloadLanguage worldtool 1
execute if score #temp worldtool matches 1.. run scoreboard players set $reloadLanguage worldtool 0

function worldtool:ui/settings/language/menu

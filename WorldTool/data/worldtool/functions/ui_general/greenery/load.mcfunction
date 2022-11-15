# Called by worldtool:ui_general/page2
# Loads/resets the greenery menu

tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude
function worldtool:ui_general/input/start/secondary

execute if score $keepMenuOptions worldtool matches 0 run tag @s remove wt.greenery.remove_current

scoreboard players set #temp worldtool 1
execute if score $keepMenuOptions worldtool matches 1 store success score #temp worldtool if entity @s[tag=!wt.visited_menu.greenery]

execute if score #temp worldtool matches 1 run function worldtool:ui_general/greenery/plant_sources/remove_all
execute if score #temp worldtool matches 1 run tag @s add wt.greenery.source.plains

function worldtool:ui_general/greenery/menu

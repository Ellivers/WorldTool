# Called by worldtool:ui_general/page_2 and worldtool:ui_general/clone/menu
# Initiates the checkered menu

scoreboard players set #temp worldtool 1
execute if score $keepMenuOptions worldtool matches 1 store success score #temp worldtool if entity @s[tag=!wt.visited_menu.checkered]

execute if entity @s[tag=!wt.menu.checkered] if score #temp worldtool matches 1 run function worldtool:ui_general/checkered/add_tags

tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

function worldtool:ui_general/checkered/menu
function worldtool:ui_general/input/start/both

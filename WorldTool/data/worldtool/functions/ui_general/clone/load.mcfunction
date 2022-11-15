# Called by worldtool:ui_general/page1 and worldtool:ui_general/clone/menu
# Initiates the clone menu

tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

scoreboard players set #temp worldtool 1
execute if score $keepMenuOptions worldtool matches 1 store success score #temp worldtool if entity @s[tag=!wt.visited_menu.clone]

execute if score #temp worldtool matches 1 run tag @s add wt.clone.mode.standard
execute if score #temp worldtool matches 1 run tag @s remove wt.clone.mode.template

# set to "both" so that the fill process uses air when move is on
function worldtool:ui_general/input/start/both
function worldtool:ui_general/clone/menu

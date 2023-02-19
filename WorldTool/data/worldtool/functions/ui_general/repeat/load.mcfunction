# Called by worldtool:ui_general/page1
# Initiates the repeat menu

tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

scoreboard players set #temp worldtool 1
execute if score $keepMenuOptions worldtool matches 1 store success score #temp worldtool if entity @s[tag=!wt.visited_menu.repeat]

execute if score #temp worldtool matches 1 run scoreboard players set @s wt.amountX 0
execute if score #temp worldtool matches 1 run scoreboard players set @s wt.amountY 0
execute if score #temp worldtool matches 1 run scoreboard players set @s wt.amountZ 0
scoreboard players set @s wt.size 0

function worldtool:ui_general/repeat/menu
function worldtool:ui_general/input/start/secondary

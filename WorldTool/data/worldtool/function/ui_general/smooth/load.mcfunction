# Called by worldtool:ui_general/page2

tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

scoreboard players set #temp worldtool 1
execute if score $keepMenuOptions worldtool matches 1 store success score #temp worldtool if entity @s[tag=!wt.visited_menu.smooth]

execute if score #temp worldtool matches 1 run tag @s add wt.smooth.direction.up
execute if score #temp worldtool matches 1 run tag @s remove wt.smooth.direction.down
execute if score #temp worldtool matches 1 run tag @s add wt.smooth.direction.east
execute if score #temp worldtool matches 1 run tag @s add wt.smooth.direction.west
execute if score #temp worldtool matches 1 run tag @s add wt.smooth.direction.north
execute if score #temp worldtool matches 1 run tag @s add wt.smooth.direction.south

scoreboard players set @s wt.size 20
scoreboard players set @s wt.size2 5

function worldtool:ui_general/smooth/menu
function worldtool:ui_general/input/start/secondary

# Called by worldtool:ui_general/page1

scoreboard players set #temp worldtool 1
execute if score $keepMenuOptions worldtool matches 1 store success score #temp worldtool if entity @s[tag=!wt.visited_menu.shell]

execute if score #temp worldtool matches 1 run tag @s add wt.shell.side.up
execute if score #temp worldtool matches 1 run tag @s add wt.shell.side.down
execute if score #temp worldtool matches 1 run tag @s add wt.shell.side.north
execute if score #temp worldtool matches 1 run tag @s add wt.shell.side.south
execute if score #temp worldtool matches 1 run tag @s add wt.shell.side.east
execute if score #temp worldtool matches 1 run tag @s add wt.shell.side.west

tag @s remove wt.shell.inner_block
scoreboard players set @s wt.size 1

function worldtool:ui_general/shell/menu
function worldtool:ui_general/input/start/both

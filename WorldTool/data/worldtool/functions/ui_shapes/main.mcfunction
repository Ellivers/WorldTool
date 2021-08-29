# Called by worldtool:drop_tool/tools/shapes and various other functions
# The main menu for the shape generation tool

function worldtool:ui_shapes/remove_tags

function worldtool:ui/open_tool

execute unless score @s wt.diameter matches 3..999 run scoreboard players set @s wt.diameter 3
execute unless score @s wt.precision matches 10..300 run scoreboard players set @s wt.precision 100
execute unless score @s wt.degrees matches 1..360 run scoreboard players set @s wt.degrees 360
execute unless score @s wt.rotY matches 0..359 run scoreboard players set @s wt.rotY 0
execute unless score @s wt.rotX matches 0..359 run scoreboard players set @s wt.rotX 0
execute unless score @s wt.height matches 1.. run scoreboard players set @s wt.height 1

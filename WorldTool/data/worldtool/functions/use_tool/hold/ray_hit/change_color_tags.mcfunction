# Called by worldtool:use_tool/hold/ray_hit/tp
# Updates the tags that say which color you are currently highlighting with

tag @s remove wt.highlight_color.0
tag @s remove wt.highlight_color.1
tag @s remove wt.highlight_color.2

execute if score #temp worldtool matches 0 run tag @s add wt.highlight_color.0
execute if score #temp worldtool matches 1 run tag @s add wt.highlight_color.1
execute if score #temp worldtool matches 2 run tag @s add wt.highlight_color.2

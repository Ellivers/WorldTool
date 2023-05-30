# Called by worldtool:use_tool/hold/ray_hit/summon
# Commands to run as the summoned entity

scoreboard players operation @s wt.ID = #ID_temp worldtool

execute if score #temp worldtool matches 0 run team join wt.pos
execute if score #temp worldtool matches 1 run team join wt.pos1
execute if score #temp worldtool matches 2 run team join wt.pos2

tag @s remove wt.temp

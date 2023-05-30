# Called by worldtool:use_tool/hold/ray_hit/load
# Moves the entity

execute if score #temp2 worldtool matches 1 if score #temp worldtool matches 0 run team join wt.pos
execute if score #temp2 worldtool matches 1 if score #temp worldtool matches 1 run team join wt.pos1
execute if score #temp2 worldtool matches 1 if score #temp worldtool matches 2 run team join wt.pos2

tp ~ ~ ~
execute store result entity @s Air short 1 run time query gametime

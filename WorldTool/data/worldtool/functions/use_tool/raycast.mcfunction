# Called by worldtool:use_tool/use
# Raycasting.

#temp = distance raycasted
#temp2 = max raycast distance
# both of these are measured in half blocks
scoreboard players add #temp worldtool 1

execute if entity @s[tag=wt.raycast_normal] unless block ^ ^ ^.5 #worldtool:air positioned ^ ^ ^.5 run function worldtool:use_tool/ray_hit/load
execute if entity @s[tag=wt.raycast_before] unless block ^ ^ ^.5 #worldtool:air run function worldtool:use_tool/ray_hit/load
execute unless score #temp worldtool >= #temp2 worldtool if block ^ ^ ^.5 #worldtool:air positioned ^ ^ ^.5 run function worldtool:use_tool/raycast

# Called by worldtool:use_tool/use
# Raycasting.

#temp = distance raycasted
#temp2 = max raycast distance
# both of these are measured in half blocks
scoreboard players add #temp worldtool 1

execute if entity @s[tag=wt.raycast_normal,tag=!wt.raycast_before] positioned ^ ^ ^.5 unless block ~ ~ ~ #worldtool:air run function worldtool:use_tool/ray_hit/load
execute if entity @s[tag=wt.raycast_before] unless block ^ ^ ^.5 #worldtool:air run function worldtool:use_tool/ray_hit/load
execute if score #temp3 worldtool matches 0 unless score #temp worldtool >= #temp2 worldtool positioned ^ ^ ^.5 if block ~ ~ ~ #worldtool:air run function worldtool:use_tool/raycast

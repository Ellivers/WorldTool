# Called recursively and by worldtool:use_tool/raycast/start
# Raycasting that only stops when it reaches its max range

#temp = distance raycasted
#temp2 = max raycast distance
# both of these are measured in half blocks
scoreboard players add #temp worldtool 1

execute if score #temp worldtool >= #temp2 worldtool run function worldtool:use_tool/raycast/done
execute if score #raycastComplete worldtool matches 0 unless score #temp worldtool >= #temp2 worldtool positioned ^ ^ ^.5 run function worldtool:use_tool/raycast/ray_through

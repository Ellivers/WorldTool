# Called recursively and by worldtool:use_tool/raycast/start
# Raycasting that stops when it reaches its max range or a block

#temp = distance raycasted
#temp2 = max raycast distance
# both of these are measured in half blocks
scoreboard players add #temp worldtool 1

execute if entity @s[tag=wt.raycast_normal,tag=!wt.raycast_before] positioned ^ ^ ^.5 unless block ~ ~ ~ #worldtool:air run function worldtool:use_tool/raycast/done
execute if entity @s[tag=wt.raycast_before] unless block ^ ^ ^.5 #worldtool:air run function worldtool:use_tool/raycast/done
execute if score #raycastComplete worldtool matches 0 if score #temp worldtool >= #temp2 worldtool run function worldtool:use_tool/raycast/done
execute if score #raycastComplete worldtool matches 0 unless score #temp worldtool >= #temp2 worldtool positioned ^ ^ ^.5 if block ~ ~ ~ #worldtool:air run function worldtool:use_tool/raycast/ray_hybrid

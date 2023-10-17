# Checks on which side of a block a ray cast hit

scoreboard players set #temp worldtool 0
scoreboard players set #temp2 worldtool 9

execute positioned ^ ^ ^-.1 run function worldtool:technical/common/get_direction/loop

# Called recursively and by worldtool:technical/common/get_direction/load

scoreboard players add #temp worldtool 1

execute if block ~ ~ ~ #worldtool:air run function worldtool:technical/common/get_direction/finish

execute if score #temp worldtool >= #temp2 worldtool unless score #temp worldtool matches 20 run function worldtool:technical/common/get_direction/finish
execute if score #temp worldtool < #temp2 worldtool positioned ^ ^ ^-.1 run function worldtool:technical/common/get_direction/loop

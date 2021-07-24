# Called by worldtool:use_brush/area/flat/get_axis/load
# Guesses the which axis to use from outside a block

execute unless block ~ ~.5 ~ #worldtool:air run scoreboard players set #temp_Y worldtool 1
execute unless block ~ ~-.5 ~ #worldtool:air run scoreboard players set #temp_Y worldtool 1

execute unless score #temp_Y worldtool matches 1 unless block ~.5 ~ ~ #worldtool:air run scoreboard players set #temp_X worldtool 1
execute unless score #temp_Y worldtool matches 1 unless block ~-.5 ~ ~ #worldtool:air run scoreboard players set #temp_X worldtool 1

execute unless score #temp_X worldtool matches 1 unless score #temp_Y worldtool matches 1 unless block ~ ~ ~.5 #worldtool:air run scoreboard players set #temp_Z worldtool 1
execute unless score #temp_X worldtool matches 1 unless score #temp_Y worldtool matches 1 unless block ~ ~ ~-.5 #worldtool:air run scoreboard players set #temp_Z worldtool 1

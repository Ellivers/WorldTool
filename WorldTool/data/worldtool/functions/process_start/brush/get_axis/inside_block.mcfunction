# Called by worldtool:process_start/brush/area/flat/get_axis/load
# Guesses the which axis to use from inside a block

execute if block ~ ~.5 ~ #worldtool:air run scoreboard players set #temp.Y worldtool 1
execute if block ~ ~-.5 ~ #worldtool:air run scoreboard players set #temp.Y worldtool 1

execute unless score #temp.Y worldtool matches 1 if block ~.5 ~ ~ #worldtool:air run scoreboard players set #temp.X worldtool 1
execute unless score #temp.Y worldtool matches 1 if block ~-.5 ~ ~ #worldtool:air run scoreboard players set #temp.X worldtool 1

execute unless score #temp.X worldtool matches 1 unless score #temp.Y worldtool matches 1 if block ~ ~ ~.5 #worldtool:air run scoreboard players set #temp.Z worldtool 1
execute unless score #temp.X worldtool matches 1 unless score #temp.Y worldtool matches 1 if block ~ ~ ~-.5 #worldtool:air run scoreboard players set #temp.Z worldtool 1

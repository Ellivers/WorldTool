# Guesses the which direction to use from inside a block

execute if block ~ ~.5 ~ #worldtool:air run scoreboard players set #temp.Y worldtool 1
execute if block ~ ~-.5 ~ #worldtool:air run scoreboard players set #temp.Y worldtool -1

execute if score #temp.Y worldtool matches 0 if block ~.5 ~ ~ #worldtool:air run scoreboard players set #temp.X worldtool 1
execute if score #temp.Y worldtool matches 0 if block ~-.5 ~ ~ #worldtool:air run scoreboard players set #temp.X worldtool -1

execute if score #temp.X worldtool matches 0 if score #temp.Y worldtool matches 0 if block ~ ~ ~.5 #worldtool:air run scoreboard players set #temp.Z worldtool 1
execute if score #temp.X worldtool matches 0 if score #temp.Y worldtool matches 0 if block ~ ~ ~-.5 #worldtool:air run scoreboard players set #temp.Z worldtool -1

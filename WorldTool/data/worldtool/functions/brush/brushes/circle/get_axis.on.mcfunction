# Called by worldtool:brush/brushes/circle/gen
# Detects which axis the circle should be on (from the surface of a block)

execute unless block ~ ~.5 ~ #worldtool:air_blocks run scoreboard players set #Y worldtool 1
execute unless block ~ ~-.5 ~ #worldtool:air_blocks run scoreboard players set #Y worldtool 1

execute unless score #Y worldtool = #Y worldtool unless block ~.5 ~ ~ #worldtool:air_blocks run scoreboard players set #X worldtool 1
execute unless score #Y worldtool = #Y worldtool unless block ~-.5 ~ ~ #worldtool:air_blocks run scoreboard players set #X worldtool 1

execute unless score #X worldtool = #X worldtool unless score #Y worldtool = #Y worldtool unless block ~ ~ ~.5 #worldtool:air_blocks run scoreboard players set #Z worldtool 1
execute unless score #X worldtool = #X worldtool unless score #Y worldtool = #Y worldtool unless block ~ ~ ~-.5 #worldtool:air_blocks run scoreboard players set #Z worldtool 1
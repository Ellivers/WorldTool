execute if block ~ ~.5 ~ #worldtool:air_blocks run scoreboard players set #Y worldtool 1
execute if block ~ ~-.5 ~ #worldtool:air_blocks run scoreboard players set #Y worldtool 1

execute unless score #Y worldtool = #Y worldtool if block ~.5 ~ ~ #worldtool:air_blocks run scoreboard players set #X worldtool 1
execute unless score #Y worldtool = #Y worldtool if block ~-.5 ~ ~ #worldtool:air_blocks run scoreboard players set #X worldtool 1

execute unless score #X worldtool = #X worldtool unless score #Y worldtool = #Y worldtool if block ~ ~ ~.5 #worldtool:air_blocks run scoreboard players set #Z worldtool 1
execute unless score #X worldtool = #X worldtool unless score #Y worldtool = #Y worldtool if block ~ ~ ~-.5 #worldtool:air_blocks run scoreboard players set #Z worldtool 1
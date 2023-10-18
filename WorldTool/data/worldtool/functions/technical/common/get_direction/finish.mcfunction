# Called by worldtool:technical/common/get_direction/loop

scoreboard players set #temp worldtool 20

# Guesses the which direction to use from outside a block

execute if entity @s[x_rotation=-90..0] unless block ~ ~.101 ~ #worldtool:air run scoreboard players set #temp.Y worldtool 1
execute if entity @s[x_rotation=0..90] unless block ~ ~-.101 ~ #worldtool:air run scoreboard players set #temp.Y worldtool -1

execute if entity @s[y_rotation=-180..0] if score #temp.Y worldtool matches 0 unless block ~.101 ~ ~ #worldtool:air run scoreboard players set #temp.X worldtool 1
execute if entity @s[y_rotation=0..180] if score #temp.Y worldtool matches 0 unless block ~-.101 ~ ~ #worldtool:air run scoreboard players set #temp.X worldtool -1

execute if entity @s[y_rotation=-90..90] if score #temp.X worldtool matches 0 if score #temp.Y worldtool matches 0 unless block ~ ~ ~.101 #worldtool:air run scoreboard players set #temp.Z worldtool 1
execute if entity @s[y_rotation=90..-90] if score #temp.X worldtool matches 0 if score #temp.Y worldtool matches 0 unless block ~ ~ ~-.101 #worldtool:air run scoreboard players set #temp.Z worldtool -1

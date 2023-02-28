# Called by the main direction calculation functions
# Division with proper rounding

scoreboard players operation #temp worldtool = #diff worldtool
execute if score #temp worldtool matches ..-1 run scoreboard players operation #temp worldtool *= #-1 worldtool

scoreboard players operation #temp2 worldtool = #temp worldtool
scoreboard players operation #temp2 worldtool *= #10 worldtool
scoreboard players operation #temp2 worldtool /= #divisionNum worldtool
scoreboard players operation #temp2 worldtool %= #10 worldtool
scoreboard players operation #temp worldtool /= #divisionNum worldtool
execute if score #temp2 worldtool matches 5.. run scoreboard players add #temp worldtool 1

execute if score #diff worldtool matches ..-1 run scoreboard players operation #temp worldtool *= #-1 worldtool

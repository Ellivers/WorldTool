
# Check if the current block is empty, and has some sort of walls around it

function worldtool:process/2d_fill/check/is_wall
execute if score #temp worldtool matches 1 run scoreboard players set #temp worldtool -1

execute if score #temp worldtool matches 0 positioned ^ ^ ^-1 run function worldtool:process/2d_fill/check/is_wall
execute if score #temp worldtool matches 0 positioned ^1 ^ ^-1 run function worldtool:process/2d_fill/check/is_wall
execute if score #temp worldtool matches 0 positioned ^1 ^ ^ run function worldtool:process/2d_fill/check/is_wall
execute if score #temp worldtool matches 0 positioned ^1 ^ ^1 run function worldtool:process/2d_fill/check/is_wall
execute if score #temp worldtool matches 0 positioned ^ ^ ^1 run function worldtool:process/2d_fill/check/is_wall
execute if score #temp worldtool matches 0 positioned ^-1 ^ ^1 run function worldtool:process/2d_fill/check/is_wall
execute if score #temp worldtool matches 0 positioned ^-1 ^ ^ run function worldtool:process/2d_fill/check/is_wall
execute if score #temp worldtool matches 0 positioned ^-1 ^ ^-1 run function worldtool:process/2d_fill/check/is_wall

execute if score #temp worldtool matches 1 run scoreboard players set #temp2 worldtool 10
execute if score #temp worldtool matches ..0 run scoreboard players set #temp2 worldtool 0

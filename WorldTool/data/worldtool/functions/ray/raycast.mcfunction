scoreboard players add $raycast worldtool 1
execute unless block ~ ~ ~ #worldtool:air_blocks run function worldtool:ray/raycast_done
execute if block ~ ~ ~ #worldtool:air_blocks unless score $raycast worldtool >= #tempMaxRayDistance worldtool positioned ^ ^ ^.5 run function worldtool:ray/raycast
scoreboard players add $raycast worldtool 1
execute unless block ~ ~ ~ #worldtool:air_blocks run function worldtool:ray/raycast_done
execute if block ~ ~ ~ #worldtool:air_blocks unless score $raycast worldtool matches 200.. positioned ^ ^ ^.5 run function worldtool:raycast
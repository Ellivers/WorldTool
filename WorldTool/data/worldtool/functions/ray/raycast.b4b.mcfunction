scoreboard players add $raycast worldtool 1
execute unless block ^ ^ ^.5 #worldtool:air_blocks run function worldtool:brush/use
execute unless score $raycast worldtool matches 200.. if block ^ ^ ^.5 #worldtool:air_blocks positioned ^ ^ ^.5 run function worldtool:ray/raycast.b4b
scoreboard players add @s wt_raycast 1
execute unless block ^ ^ ^.5 #worldtool:air_blocks run function worldtool:brush/use
execute unless score @s wt_raycast >= #tempMaxRayDistance worldtool if block ^ ^ ^.5 #worldtool:air_blocks positioned ^ ^ ^.5 run function worldtool:ray/raycast.b4b
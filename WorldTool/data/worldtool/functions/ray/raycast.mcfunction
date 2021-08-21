scoreboard players add @s wt_raycast 1
execute unless block ~ ~ ~ #worldtool:air_blocks run function worldtool:ray/raycast_done
execute if block ~ ~ ~ #worldtool:air_blocks unless score @s wt_raycast >= #tempMaxRayDistance worldtool positioned ^ ^ ^.5 run function worldtool:ray/raycast
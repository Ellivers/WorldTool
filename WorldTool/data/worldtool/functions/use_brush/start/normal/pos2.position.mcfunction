# Called by worldtool:use_brush/start/normal/summon_pos2
# Initiates pos2, and sets positions to temporary variables

scoreboard players operation @s wt.ID = #ID_temp worldtool
tag @s remove wt.temp

scoreboard players operation #radius worldtool = @s wt.brush_size
scoreboard players operation #radius worldtool /= #2 worldtool

execute store result score #temp2xt worldtool run data get entity @s Pos[0]
execute store result score #temp2yt worldtool run data get entity @s Pos[1]
execute store result score #temp2zt worldtool run data get entity @s Pos[2]

scoreboard players operation #temp2xt worldtool += #radius worldtool
scoreboard players operation #temp2yt worldtool += #radius worldtool
scoreboard players operation #temp2zt worldtool += #radius worldtool

execute store result entity @s Pos[0] double 1 run scoreboard players get #temp2xt worldtool
execute store result entity @s Pos[1] double 1 run scoreboard players get #temp2yt worldtool
execute store result entity @s Pos[2] double 1 run scoreboard players get #temp2zt worldtool

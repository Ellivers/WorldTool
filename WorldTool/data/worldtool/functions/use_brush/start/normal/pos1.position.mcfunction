# Called by worldtool:use_brush/start/normal/summon_pos1
# Initiates pos1, and sets all positions to temporary variables

scoreboard players operation @s wt.ID = #ID_temp worldtool
tag @s remove wt.temp

scoreboard players operation #radius worldtool = @s wt.brush_size
scoreboard players operation #radius worldtool /= #2 worldtool

execute store result score #temp1xt worldtool run data get entity @s Pos[0]
execute store result score #temp1yt worldtool run data get entity @s Pos[1]
execute store result score #temp1zt worldtool run data get entity @s Pos[2]

scoreboard players operation #temp2xt worldtool = #temp1xt worldtool
scoreboard players operation #temp2yt worldtool = #temp1yt worldtool
scoreboard players operation #temp2zt worldtool = #temp1zt worldtool

scoreboard players operation #temp1xt worldtool -= #radius worldtool
scoreboard players operation #temp1yt worldtool -= #radius worldtool
scoreboard players operation #temp1zt worldtool -= #radius worldtool

scoreboard players operation #temp2xt worldtool += #radius worldtool
scoreboard players operation #temp2yt worldtool += #radius worldtool
scoreboard players operation #temp2zt worldtool += #radius worldtool

execute store result entity @s Pos[0] double 1 run scoreboard players get #temp1xt worldtool
execute store result entity @s Pos[1] double 1 run scoreboard players get #temp1yt worldtool
execute store result entity @s Pos[2] double 1 run scoreboard players get #temp1zt worldtool

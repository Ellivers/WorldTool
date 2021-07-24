# Called by worldtool:use_brush/start/load

scoreboard players operation #ID_temp worldtool = @s wt.ID

function worldtool:use_brush/start/normal/summon_pos1

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.brush_pos1] if score @s wt.ID = #ID_temp worldtool at @s as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:use_brush/start/normal/start

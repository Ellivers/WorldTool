# Called by worldtool:ui_general/options/adjust_positions/area_grow/load
# Moves position 2 to grow the area

execute if score #pos2xt worldtool < #pos1xt worldtool at @s run tp ~-1 ~ ~
execute if score #pos2yt worldtool < #pos1yt worldtool at @s run tp ~ ~-1 ~
execute if score #pos2zt worldtool < #pos1zt worldtool at @s run tp ~ ~ ~-1

execute if score #pos2xt worldtool > #pos1xt worldtool at @s run tp ~1 ~ ~
execute if score #pos2yt worldtool > #pos1yt worldtool at @s run tp ~ ~1 ~
execute if score #pos2zt worldtool > #pos1zt worldtool at @s run tp ~ ~ ~1

execute if score #pos1xt worldtool = #pos2xt worldtool if score #pos1yt worldtool = #pos2yt worldtool if score #pos1zt worldtool = #pos2zt worldtool at @s run tp ~-1 ~-1 ~-1

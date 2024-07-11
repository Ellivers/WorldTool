# Called by worldtool:ui_general/options/adjust_positions/menu
# Swaps positions 1 and 2

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos1
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos2

data modify storage worldtool:storage Temp.Pos set value [0d,0d,0d]
execute store result storage worldtool:storage Temp.Pos[0] double 1 run scoreboard players get #pos2xt worldtool
execute store result storage worldtool:storage Temp.Pos[1] double 1 run scoreboard players get #pos2yt worldtool
execute store result storage worldtool:storage Temp.Pos[2] double 1 run scoreboard players get #pos2zt worldtool
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run data modify entity @s Pos set from storage worldtool:storage Temp.Pos

data modify storage worldtool:storage Temp.Pos set value [0d,0d,0d]
execute store result storage worldtool:storage Temp.Pos[0] double 1 run scoreboard players get #pos1xt worldtool
execute store result storage worldtool:storage Temp.Pos[1] double 1 run scoreboard players get #pos1yt worldtool
execute store result storage worldtool:storage Temp.Pos[2] double 1 run scoreboard players get #pos1zt worldtool
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool run data modify entity @s Pos set from storage worldtool:storage Temp.Pos

function worldtool:ui_general/options/adjust_positions/menu

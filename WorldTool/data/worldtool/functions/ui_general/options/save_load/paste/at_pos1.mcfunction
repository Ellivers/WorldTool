# Called by worldtool:ui_general/options/save_load/paste/menu
# Pastes the area from clipboard at position 1

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool at @s as @p run function worldtool:ui_general/options/save_load/paste/start
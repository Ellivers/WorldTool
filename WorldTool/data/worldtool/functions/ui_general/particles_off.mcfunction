# Called by worldtool:ui_general/page1
# Turns off particle outlines

scoreboard players operation #ID_temp worldtool = @s wt.ID
tag @s remove wt.outline_selection

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.position] if score @s wt.ID = #ID_temp worldtool run tag @s remove wt.particles

execute if entity @s[tag=wt.menu.general.p1] run function worldtool:ui_general/load
execute if entity @s[tag=wt.menu.adjust_positions] run function worldtool:ui_general/options/adjust_positions/menu
execute if entity @s[tag=wt.menu.paste_area] run function worldtool:ui_general/options/save_load_area/paste/menu

function #worldtool:addon/particles/general_off

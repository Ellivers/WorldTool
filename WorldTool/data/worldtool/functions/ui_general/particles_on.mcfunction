# Called by worldtool:ui_general/page1
# Turns on particle outlines

tag @s add wt.outline_selection

execute if entity @s[tag=wt.menu.general.p1] run function worldtool:ui_general/load
execute if entity @s[tag=wt.menu.adjust_positions] run function worldtool:ui_general/options/adjust_positions/menu
execute if entity @s[tag=wt.menu.paste_area] run function worldtool:ui_general/options/save_load/paste/menu

function #worldtool:addon/particles/general_on

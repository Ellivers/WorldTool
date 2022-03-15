# Called by worldtool:ui_general/page1
# Turns on particle outlines

tag @s add wt.outline_selection

execute if entity @s[tag=wt.menu.general.p1] run function worldtool:ui_general/load

function #worldtool:addon/particles/general_on

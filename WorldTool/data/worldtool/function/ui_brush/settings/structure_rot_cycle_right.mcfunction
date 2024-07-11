# Called by worldtool:ui_brush/menu
# Cycles the structure rotation

function worldtool:ui_brush/check_tool

execute if predicate worldtool:brush_tool/settings/structure_rotation/-90 run tag @s add wt.temp
execute if predicate worldtool:brush_tool/settings/structure_rotation/-90 run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/structure_rotation/none
execute if predicate worldtool:brush_tool/settings/structure_rotation/180 run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/structure_rotation/-90
execute if predicate worldtool:brush_tool/settings/structure_rotation/90 run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/structure_rotation/180
execute if predicate worldtool:brush_tool/settings/structure_rotation/none run item modify entity @s[tag=!wt.temp] weapon.mainhand worldtool:brush_tool/settings/structure_rotation/90

tag @s remove wt.temp

function worldtool:ui_brush/menu

# Called by worldtool:ui_brush/menu
# Cycles the axis

function worldtool:ui_brush/check_tool

execute if predicate worldtool:brush_tool/settings/axis/z run tag @s add wt.temp
execute if predicate worldtool:brush_tool/settings/axis/z run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/axis/auto
execute if predicate worldtool:brush_tool/settings/axis/y run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/axis/z
execute if predicate worldtool:brush_tool/settings/axis/x run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/axis/y
execute if predicate worldtool:brush_tool/settings/axis/auto run item modify entity @s[tag=!wt.temp] weapon.mainhand worldtool:brush_tool/settings/axis/x

tag @s remove wt.temp

function worldtool:ui_brush/menu

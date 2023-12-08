# Called by worldtool:ui_shapes/menu
# Cycles the axis

function worldtool:ui_shapes/check_tool

execute if predicate worldtool:shape_tool/settings/orientation/z run tag @s add wt.temp
execute if predicate worldtool:shape_tool/settings/orientation/z run item modify entity @s weapon.mainhand worldtool:shape_tool/settings/orientation/auto
execute if predicate worldtool:shape_tool/settings/orientation/y run item modify entity @s weapon.mainhand worldtool:shape_tool/settings/orientation/z
execute if predicate worldtool:shape_tool/settings/orientation/x run item modify entity @s weapon.mainhand worldtool:shape_tool/settings/orientation/y
execute if predicate worldtool:shape_tool/settings/orientation/auto run item modify entity @s[tag=!wt.temp] weapon.mainhand worldtool:shape_tool/settings/orientation/x

tag @s remove wt.temp

function worldtool:ui_shapes/menu

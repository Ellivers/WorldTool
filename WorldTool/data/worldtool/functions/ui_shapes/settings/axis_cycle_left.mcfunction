# Called by worldtool:ui_shapes/menu
# Cycles the axis

function worldtool:ui_shapes/check_tool

execute if predicate worldtool:shape_tool/settings/axis/x run tag @s add wt.temp
execute if predicate worldtool:shape_tool/settings/axis/x run item modify entity @s weapon.mainhand worldtool:shape_tool/settings/axis/auto
execute if predicate worldtool:shape_tool/settings/axis/y run item modify entity @s weapon.mainhand worldtool:shape_tool/settings/axis/x
execute if predicate worldtool:shape_tool/settings/axis/z run item modify entity @s weapon.mainhand worldtool:shape_tool/settings/axis/y
execute if predicate worldtool:shape_tool/settings/axis/auto run item modify entity @s[tag=!wt.temp] weapon.mainhand worldtool:shape_tool/settings/axis/z

tag @s remove wt.temp

function worldtool:ui_shapes/menu

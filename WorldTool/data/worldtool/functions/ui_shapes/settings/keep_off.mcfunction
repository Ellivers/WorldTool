# Called by worldtool:ui_shapes/menu
# Disables keeping blocks

function worldtool:ui_shapes/check_tool

item modify entity @s weapon.mainhand worldtool:shape_tool/settings/keep/off

function worldtool:ui_shapes/menu

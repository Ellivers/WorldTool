# Called by worldtool:ui_shapes/menu
# Resets the length to the default value.

function worldtool:ui_shapes/check_tool

data modify storage worldtool:storage Temp.Length set value 5
item modify entity @s weapon.mainhand worldtool:shape_tool/settings/set_length

function worldtool:ui_shapes/menu

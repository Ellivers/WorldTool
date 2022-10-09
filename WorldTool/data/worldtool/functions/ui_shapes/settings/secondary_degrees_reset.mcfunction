# Called by worldtool:ui_shapes/menu
# Resets the degrees to the default value.

function worldtool:ui_shapes/check_tool

data modify storage worldtool:storage Temp.SecondaryDegrees set value 180
item modify entity @s weapon.mainhand worldtool:shape_tool/settings/set_secondary_degrees

function worldtool:ui_shapes/menu

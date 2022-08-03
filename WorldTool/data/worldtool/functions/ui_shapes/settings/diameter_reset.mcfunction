# Called by worldtool:ui_shapes/menu
# Resets the diameter to the default value.

function worldtool:ui_shapes/check_tool

data modify storage worldtool:storage Temp.Diameter set value 3
item modify entity @s weapon.mainhand worldtool:shape_tool/settings/set_diameter

function worldtool:ui_shapes/menu

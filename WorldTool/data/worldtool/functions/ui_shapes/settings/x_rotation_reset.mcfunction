# Called by worldtool:ui_shapes/menu
# Resets the X rotation to the default value.

function worldtool:ui_shapes/check_tool

data modify storage worldtool:storage Temp.XRotation set value 0
item modify entity @s weapon.mainhand worldtool:shape_tool/settings/set_x_rotation

function worldtool:ui_shapes/menu

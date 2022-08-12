# Called by worldtool:ui_shapes/menu
# Resets the Y rotation to the default value.

function worldtool:ui_shapes/check_tool

data modify storage worldtool:storage Temp.YRotation set value 0
item modify entity @s weapon.mainhand worldtool:shape_tool/settings/set_y_rotation

function worldtool:ui_shapes/menu

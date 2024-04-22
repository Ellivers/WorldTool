# Called by worldtool:ui_shapes/menu
# Resets the precision to the default value.

function worldtool:ui_shapes/check_tool

data modify storage worldtool:storage Temp.Precision set value 1
function worldtool:modify_item/shape_tool/settings/set_precision

function worldtool:ui_shapes/menu

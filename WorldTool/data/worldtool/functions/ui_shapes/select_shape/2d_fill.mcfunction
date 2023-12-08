# Called by worldtool:ui_shapes/select_shape/menu
# Selects the cone shape

function worldtool:ui_shapes/check_tool

item modify entity @s weapon.mainhand worldtool:shape_tool/shapes/2d_fill
function worldtool:ui_shapes/set_tooltip

function worldtool:ui_shapes/select_shape/convert_orientation/axis
item modify entity @s weapon.mainhand worldtool:common_settings/before_block/on

function worldtool:ui_shapes/menu

# Called by worldtool:ui_shapes/menu
# Enable continuous shape placement

function worldtool:ui_shapes/check_tool

item modify entity @s weapon.mainhand worldtool:shape_tool/settings/continuous_place/on

function worldtool:ui_shapes/menu

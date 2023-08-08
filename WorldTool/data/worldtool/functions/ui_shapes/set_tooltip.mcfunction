# Called by various Shape Tool-related functions
# Sets the correct control instruction tooltips

function worldtool:ui_shapes/check_tool

execute unless predicate worldtool:shape_tool/settings/continuous_place if predicate worldtool:common_settings/control_scheme/normal run item modify entity @s weapon.mainhand worldtool:shape_tool/control_scheme/normal/normal
execute unless predicate worldtool:shape_tool/settings/continuous_place if predicate worldtool:common_settings/control_scheme/limited run item modify entity @s weapon.mainhand worldtool:shape_tool/control_scheme/normal/limited

execute if predicate worldtool:shape_tool/settings/continuous_place if predicate worldtool:common_settings/control_scheme/normal run item modify entity @s weapon.mainhand worldtool:shape_tool/control_scheme/continuous/normal
execute if predicate worldtool:shape_tool/settings/continuous_place if predicate worldtool:common_settings/control_scheme/limited run item modify entity @s weapon.mainhand worldtool:shape_tool/control_scheme/continuous/limited

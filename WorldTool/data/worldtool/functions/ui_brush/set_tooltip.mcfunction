# Called by various Brush Tool-related functions
# Sets the correct control instruction tooltips

function worldtool:ui_brush/check_tool

execute if predicate worldtool:common_settings/control_scheme/normal run item modify entity @s weapon.mainhand worldtool:brush_tool/control_scheme/normal
execute if predicate worldtool:common_settings/control_scheme/limited run item modify entity @s weapon.mainhand worldtool:brush_tool/control_scheme/limited

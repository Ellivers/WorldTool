# Called by worldtool:ui_shapes/select_shape/2d_fill
# Converts the orientation format to the standard 6-directional one

item modify entity @s[predicate=worldtool:shape_tool/settings/orientation/east] weapon.mainhand worldtool:shape_tool/settings/orientation/x
item modify entity @s[predicate=worldtool:shape_tool/settings/orientation/west] weapon.mainhand worldtool:shape_tool/settings/orientation/x
item modify entity @s[predicate=worldtool:shape_tool/settings/orientation/up] weapon.mainhand worldtool:shape_tool/settings/orientation/y
item modify entity @s[predicate=worldtool:shape_tool/settings/orientation/down] weapon.mainhand worldtool:shape_tool/settings/orientation/y
item modify entity @s[predicate=worldtool:shape_tool/settings/orientation/south] weapon.mainhand worldtool:shape_tool/settings/orientation/z
item modify entity @s[predicate=worldtool:shape_tool/settings/orientation/north] weapon.mainhand worldtool:shape_tool/settings/orientation/z

item modify entity @s weapon.mainhand worldtool:shape_tool/settings/accepted_orientation/axis

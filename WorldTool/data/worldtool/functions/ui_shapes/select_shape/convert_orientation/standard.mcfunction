# Called by worldtool:ui_shapes/select_shape/cone and worldtool:ui_shapes/select_shape/cylinder
# Converts the orientation format to the standard 6-directional one

item modify entity @s[predicate=worldtool:shape_tool/settings/orientation/x] weapon.mainhand worldtool:shape_tool/settings/orientation/east
item modify entity @s[predicate=worldtool:shape_tool/settings/orientation/y] weapon.mainhand worldtool:shape_tool/settings/orientation/up
item modify entity @s[predicate=worldtool:shape_tool/settings/orientation/z] weapon.mainhand worldtool:shape_tool/settings/orientation/south

item modify entity @s weapon.mainhand worldtool:shape_tool/settings/accepted_orientation/standard

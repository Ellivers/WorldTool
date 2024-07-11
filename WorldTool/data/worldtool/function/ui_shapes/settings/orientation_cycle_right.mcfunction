# Called by worldtool:ui_shapes/menu
# Cycles the shape orientation

function worldtool:ui_shapes/check_tool

tag @s[predicate=worldtool:shape_tool/settings/orientation/west] add wt.temp
item modify entity @s[predicate=worldtool:shape_tool/settings/orientation/west] weapon.mainhand worldtool:shape_tool/settings/orientation/up
item modify entity @s[predicate=worldtool:shape_tool/settings/orientation/east] weapon.mainhand worldtool:shape_tool/settings/orientation/west
item modify entity @s[predicate=worldtool:shape_tool/settings/orientation/south] weapon.mainhand worldtool:shape_tool/settings/orientation/east
item modify entity @s[predicate=worldtool:shape_tool/settings/orientation/north] weapon.mainhand worldtool:shape_tool/settings/orientation/south
item modify entity @s[predicate=worldtool:shape_tool/settings/orientation/down] weapon.mainhand worldtool:shape_tool/settings/orientation/north
item modify entity @s[predicate=worldtool:shape_tool/settings/orientation/up,tag=!wt.temp] weapon.mainhand worldtool:shape_tool/settings/orientation/down

tag @s remove wt.temp

function worldtool:ui_shapes/menu

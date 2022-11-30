# Called by worldtool:ui_shapes/menu
# Toggles hollow

function worldtool:ui_shapes/check_tool

tag @s[predicate=worldtool:shape_tool/settings/hollow] add wt.temp
item modify entity @s[tag=wt.temp] weapon.mainhand worldtool:shape_tool/settings/hollow/off
item modify entity @s[tag=!wt.temp] weapon.mainhand worldtool:shape_tool/settings/hollow/on

tag @s remove wt.temp

function worldtool:ui_shapes/menu

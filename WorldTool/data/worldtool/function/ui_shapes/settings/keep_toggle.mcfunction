# Called by worldtool:ui_shapes/menu
# Disables keeping blocks

function worldtool:ui_shapes/check_tool

tag @s[predicate=worldtool:shape_tool/settings/keep] add wt.temp
item modify entity @s[tag=wt.temp] weapon.mainhand worldtool:shape_tool/settings/keep/off
item modify entity @s[tag=!wt.temp] weapon.mainhand worldtool:shape_tool/settings/keep/on

tag @s remove wt.temp

function worldtool:ui_shapes/menu

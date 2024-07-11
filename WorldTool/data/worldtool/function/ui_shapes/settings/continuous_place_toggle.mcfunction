# Called by worldtool:ui_shapes/menu
# Toggles continuous shape placement

tag @s add wt.user

function worldtool:ui_shapes/check_tool

tag @s[predicate=worldtool:shape_tool/settings/continuous_place] add wt.temp
item modify entity @s[tag=wt.temp] weapon.mainhand worldtool:shape_tool/settings/continuous_place/off
item modify entity @s[tag=!wt.temp] weapon.mainhand worldtool:shape_tool/settings/continuous_place/on

tag @s remove wt.temp

function worldtool:ui_shapes/menu

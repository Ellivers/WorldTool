# Called by worldtool:ui_shapes/options/selection/menu
# Toggles which control scheme to use

function worldtool:ui_shapes/check_tool

tag @s[predicate=worldtool:common_settings/control_scheme/normal] add wt.temp
execute if entity @s[tag=wt.temp,predicate=!worldtool:shape_tool/settings/continuous_place] run item modify entity @s weapon.mainhand worldtool:shape_tool/control_scheme/normal/limited
execute if entity @s[tag=wt.temp,predicate=worldtool:shape_tool/settings/continuous_place] run item modify entity @s weapon.mainhand worldtool:shape_tool/control_scheme/continuous/limited
execute if entity @s[tag=!wt.temp,predicate=!worldtool:shape_tool/settings/continuous_place] run item modify entity @s weapon.mainhand worldtool:shape_tool/control_scheme/normal/normal
execute if entity @s[tag=!wt.temp,predicate=worldtool:shape_tool/settings/continuous_place] run item modify entity @s weapon.mainhand worldtool:shape_tool/control_scheme/continuous/normal

execute if entity @s[tag=wt.temp] run data modify storage worldtool:storage Temp.Reach set value 5
execute if entity @s[tag=!wt.temp] run data modify storage worldtool:storage Temp.Reach set value -1
item modify entity @s weapon.mainhand worldtool:common_settings/set_reach

tag @s remove wt.temp

function worldtool:ui_shapes/options/selection/menu

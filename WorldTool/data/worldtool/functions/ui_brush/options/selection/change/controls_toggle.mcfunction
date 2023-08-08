# Called by worldtool:ui_brush/options/selection/menu
# Toggles which control scheme to use (currently there's only 2)

function worldtool:ui_brush/check_tool

tag @s[predicate=worldtool:common_settings/control_scheme/normal] add wt.temp
execute if entity @s[tag=wt.temp] run item modify entity @s weapon.mainhand worldtool:brush_tool/control_scheme/limited
execute if entity @s[tag=!wt.temp] run item modify entity @s weapon.mainhand worldtool:brush_tool/control_scheme/normal
execute if entity @s[tag=wt.temp] run data modify storage worldtool:storage Temp.Reach set value 5
execute if entity @s[tag=!wt.temp] run data modify storage worldtool:storage Temp.Reach set value -1
item modify entity @s weapon.mainhand worldtool:common_settings/set_reach

tag @s remove wt.temp

function worldtool:ui_brush/options/selection/menu

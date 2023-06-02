# Called by worldtool:ui_general/options/selection/menu
# Toggles highlighting the targetted block

tag @s[predicate=worldtool:tools/settings/highlight] add wt.temp
execute if entity @s[tag=wt.temp] run item modify entity @s weapon.mainhand worldtool:settings/highlight/off
execute if entity @s[tag=!wt.temp] run item modify entity @s weapon.mainhand worldtool:settings/highlight/on

tag @s remove wt.temp

function worldtool:ui_general/options/selection/menu

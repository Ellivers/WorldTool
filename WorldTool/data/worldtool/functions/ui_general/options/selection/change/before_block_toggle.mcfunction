# Called by worldtool:ui_general/options/selection/menu
# Toggles stopping outside or inside the targetted block

function worldtool:ui_general/check_tool

tag @s[predicate=worldtool:common_settings/before_block] add wt.temp
execute if entity @s[tag=wt.temp] run item modify entity @s weapon.mainhand worldtool:common_settings/before_block/off
execute if entity @s[tag=!wt.temp] run item modify entity @s weapon.mainhand worldtool:common_settings/before_block/on

tag @s remove wt.temp

function worldtool:ui_general/options/selection/menu

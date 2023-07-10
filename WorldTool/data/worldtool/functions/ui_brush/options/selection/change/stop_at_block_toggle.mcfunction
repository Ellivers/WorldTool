# Called by worldtool:ui_brush/options/selection/menu
# Toggles stopping at the first block in range

function worldtool:ui_brush/check_tool

tag @s[predicate=worldtool:tools/settings/stop_at_block] add wt.temp
execute if entity @s[tag=wt.temp] run item modify entity @s weapon.mainhand worldtool:settings/stop_at_block/off
execute if entity @s[tag=!wt.temp] run item modify entity @s weapon.mainhand worldtool:settings/stop_at_block/on

tag @s remove wt.temp

function worldtool:ui_brush/options/selection/menu

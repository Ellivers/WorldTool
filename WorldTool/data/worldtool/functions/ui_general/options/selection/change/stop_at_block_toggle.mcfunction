# Called by worldtool:ui_general/options/selection/menu
# Toggles stopping at the first block in range

tag @s[predicate=worldtool:common_settings/stop_at_block] add wt.temp
execute if entity @s[tag=wt.temp] run item modify entity @s weapon.mainhand worldtool:common_settings/stop_at_block/off
execute if entity @s[tag=!wt.temp] run item modify entity @s weapon.mainhand worldtool:common_settings/stop_at_block/on

tag @s remove wt.temp

function worldtool:ui_general/options/selection/menu

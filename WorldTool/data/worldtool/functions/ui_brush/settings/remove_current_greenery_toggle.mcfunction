# Called by worldtool:ui_brush/menu
# Toggles the "remove current greenery" setting

function worldtool:ui_brush/check_tool

execute if predicate worldtool:brush_tool/settings/remove_current_greenery run tag @s add wt.temp
execute if predicate worldtool:brush_tool/settings/remove_current_greenery run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/remove_current_greenery/off
execute if entity @s[tag=!wt.temp,predicate=!worldtool:brush_tool/settings/remove_current_greenery] run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/remove_current_greenery/on

tag @s remove wt.temp

function worldtool:ui_brush/menu

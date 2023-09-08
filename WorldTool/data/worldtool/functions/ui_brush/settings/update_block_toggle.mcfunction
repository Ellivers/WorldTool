# Called by worldtool:ui_brush/options/menu
# Toggles the update block setting

function worldtool:ui_brush/check_tool

execute if predicate worldtool:brush_tool/settings/update_block run tag @s add wt.temp
execute if predicate worldtool:brush_tool/settings/update_block run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/update_block/off
execute if entity @s[tag=!wt.temp,predicate=!worldtool:brush_tool/settings/update_block] run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/update_block/on

tag @s remove wt.temp

function worldtool:ui_brush/options/menu

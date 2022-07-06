# Called by worldtool:ui_brush/menu
# Toggles the overwrite blocks setting

function worldtool:ui_brush/check_tool

execute if predicate worldtool:brush_tool/settings/overwrite_blocks run tag @s add wt.temp
execute if predicate worldtool:brush_tool/settings/overwrite_blocks run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/overwrite_blocks/off
execute if entity @s[tag=!wt.temp,predicate=!worldtool:brush_tool/settings/overwrite_blocks] run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/overwrite_blocks/on

tag @s remove wt.temp

function worldtool:ui_brush/menu

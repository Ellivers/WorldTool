# Called by worldtool:ui_brush/menu
# Toggles the flat setting

function worldtool:ui_brush/check_tool

function worldtool:technical/common/get_item_data
execute unless data storage worldtool:storage Temp.ItemData.WorldTool.BrushSettings.Axis run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/axis/auto

execute if predicate worldtool:brush_tool/settings/flat run tag @s add wt.temp
execute if predicate worldtool:brush_tool/settings/flat run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/flat/off
execute if entity @s[tag=!wt.temp,predicate=!worldtool:brush_tool/settings/flat] run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/flat/on

tag @s remove wt.temp

function worldtool:ui_brush/menu

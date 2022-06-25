# Called by worldtool:ui_brush/menu
# Toggles the before block setting

execute if predicate worldtool:brush_tool/settings/before_block run tag @s add wt.temp
execute if predicate worldtool:brush_tool/settings/before_block run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/before_block/off
execute if entity @s[tag=!wt.temp,predicate=!worldtool:brush_tool/settings/before_block] run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/before_block/on

tag @s remove wt.temp

function worldtool:ui_brush/menu

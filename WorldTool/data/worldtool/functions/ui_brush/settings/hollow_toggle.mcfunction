# Called by worldtool:ui_brush/menu
# Toggles the hollow setting

execute if predicate worldtool:brush_tool/settings/hollow run tag @s add wt.temp
execute if predicate worldtool:brush_tool/settings/hollow run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/hollow/off
execute if entity @s[tag=!wt.temp,predicate=!worldtool:brush_tool/settings/hollow] run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/hollow/on

tag @s remove wt.temp

function worldtool:ui_brush/menu

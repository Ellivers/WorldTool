# Called by worldtool:ui_brush/menu
# Cycles the structure mirroring mode

function worldtool:ui_brush/check_tool

execute if predicate worldtool:brush_tool/settings/structure_mirror/none run tag @s add wt.temp
execute if predicate worldtool:brush_tool/settings/structure_mirror/none run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/structure_mirror/left_right
execute if predicate worldtool:brush_tool/settings/structure_mirror/front_back run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/structure_mirror/none
execute if predicate worldtool:brush_tool/settings/structure_mirror/left_right run item modify entity @s[tag=!wt.temp] weapon.mainhand worldtool:brush_tool/settings/structure_mirror/front_back

tag @s remove wt.temp

function worldtool:ui_brush/menu

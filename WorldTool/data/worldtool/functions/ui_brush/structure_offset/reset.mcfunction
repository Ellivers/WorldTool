# Called by worldtool:ui_brush/structure_offset/menu
# Resets the structure offsets

function worldtool:ui_brush/check_tool

data modify storage worldtool:storage Temp.Offset set value 0
item modify entity @s weapon.mainhand worldtool:brush_tool/settings/structure_offset/set_x

data modify storage worldtool:storage Temp.Offset set value 0
item modify entity @s weapon.mainhand worldtool:brush_tool/settings/structure_offset/set_y

data modify storage worldtool:storage Temp.Offset set value 0
item modify entity @s weapon.mainhand worldtool:brush_tool/settings/structure_offset/set_z

function worldtool:ui_brush/structure_offset/menu

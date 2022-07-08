# Called by worldtool:ui_brush/structure_offset/menu
# Sets the structure offset values

data modify storage worldtool:storage Temp.OffsetValues set from entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,sort=nearest,limit=1] Item.tag.WorldTool
kill @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,sort=nearest,limit=1]

function worldtool:ui_brush/check_tool

data modify storage worldtool:storage Temp.Offset set from storage worldtool:storage Temp.OffsetValues.posX
item modify entity @s weapon.mainhand worldtool:brush_tool/settings/structure_offset/set_x

data modify storage worldtool:storage Temp.Offset set from storage worldtool:storage Temp.OffsetValues.posY
item modify entity @s weapon.mainhand worldtool:brush_tool/settings/structure_offset/set_y

data modify storage worldtool:storage Temp.Offset set from storage worldtool:storage Temp.OffsetValues.posZ
item modify entity @s weapon.mainhand worldtool:brush_tool/settings/structure_offset/set_z

function worldtool:ui_brush/structure_offset/menu

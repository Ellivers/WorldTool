# Called by worldtool:input_check/player
# Selects a structure

data modify storage worldtool:storage Temp.Structure set from entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,sort=nearest,limit=1] Item.tag.WorldTool.Structure
kill @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,sort=nearest,limit=1]

function worldtool:ui_brush/check_tool

item modify entity @s weapon.mainhand worldtool:brush_tool/set_structure

function worldtool:ui_brush/menu

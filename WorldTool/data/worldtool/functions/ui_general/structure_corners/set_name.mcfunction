# Called by worldtool:input_check/player
# Sets the structure name to the manually inputted value

function worldtool:database/get

data modify storage rx.playerdb:io player.data.WorldTool.StructureCornerName set from entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1,limit=1] Item.tag.WorldTool.StructureName
kill @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1,limit=1]

function worldtool:database/save

function worldtool:ui_general/structure_corners/menu

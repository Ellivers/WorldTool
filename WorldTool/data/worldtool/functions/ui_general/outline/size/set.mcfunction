# Called by worldtool:input_check/player
# Sets the line thickness to a manually entered value

execute store result score @s wt.thickness run data get entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1,limit=1] Item.tag.WorldTool.Size
kill @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1,limit=1]

execute if score @s wt.thickness matches ..0 run scoreboard players set @s wt.thickness 1

function worldtool:ui_general/outline/menu

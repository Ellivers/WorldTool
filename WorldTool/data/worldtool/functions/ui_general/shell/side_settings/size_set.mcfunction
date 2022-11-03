# Called by worldtool:input_check/player
# Sets the side thickness to a manually entered value

execute store result score @s wt.size run data get entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1,limit=1] Item.tag.WorldTool.SideSize
kill @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1,limit=1]

execute if score @s wt.size matches ..0 run scoreboard players set @s wt.size 1

function worldtool:ui_general/shell/side_settings

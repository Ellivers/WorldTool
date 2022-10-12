# Called by worldtool:input_check/player
# Sets the line thickness to a manually entered value

execute store result score #temp worldtool run data get entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1,limit=1] Item.tag.WorldTool.Size
kill @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1,limit=1]

execute if score #temp worldtool matches ..0 run scoreboard players set #temp worldtool 1

function #rx.playerdb:api/v2/get/self

execute store result storage rx.playerdb:io player.data.WorldTool.OutlineSize int 1 run scoreboard players get #temp worldtool

function #rx.playerdb:api/v2/save/self

function worldtool:ui_general/outline/menu

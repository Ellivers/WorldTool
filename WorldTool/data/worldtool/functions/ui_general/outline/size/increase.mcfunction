# Called by worldtool:ui_general/outline/menu
# Increases the line thickness by 1 block

function #rx.playerdb:api/v2/get/self

execute store result score #temp worldtool run data get storage rx.playerdb:io player.data.WorldTool.OutlineSize
execute if score #temp worldtool matches ..0 run scoreboard players set #temp worldtool 1

scoreboard players add #temp worldtool 1

execute store result storage rx.playerdb:io player.data.WorldTool.OutlineSize int 1 run scoreboard players get #temp worldtool

function #rx.playerdb:api/v2/save/self

function worldtool:ui_general/outline/menu

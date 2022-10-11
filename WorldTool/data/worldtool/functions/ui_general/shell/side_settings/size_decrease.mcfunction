# Called by worldtool:ui_general/shell/side_settings
# Decreases the side thickness by 1 block

function #rx.playerdb:api/v2/get/self

execute store result score #temp worldtool run data get storage rx.playerdb:io player.data.WorldTool.ShellSideSize
execute if score #temp worldtool matches ..0 run scoreboard players set #temp worldtool 1

execute if score #temp worldtool matches 2.. run scoreboard players remove #temp worldtool 1

execute store result storage rx.playerdb:io player.data.WorldTool.ShellSideSize int 1 run scoreboard players get #temp worldtool

function #rx.playerdb:api/v2/save/self

function worldtool:ui_general/shell/side_settings

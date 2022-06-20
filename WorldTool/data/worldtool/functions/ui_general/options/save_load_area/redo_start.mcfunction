# Called by worldtool:ui_general/options/menu
# Starts the redo process

function #rx.playerdb:api/v2/get/self

scoreboard players set #temp worldtool -1
execute store result score #temp worldtool if data storage rx.playerdb:io player.data.WorldTool.Future[]
execute if score #temp worldtool matches 2.. run data modify storage worldtool:storage Temp.Pos set from storage rx.playerdb:io player.data.WorldTool.Future[0].Pos
execute if score #temp worldtool matches 2.. store result score #temp worldtool run data modify storage worldtool:storage Temp.Pos set from storage rx.playerdb:io player.data.WorldTool.Future[1].Pos
execute if score #temp worldtool matches 0 run data modify storage worldtool:storage Temp.Size set from storage rx.playerdb:io player.data.WorldTool.Future[0].Size
execute if score #temp worldtool matches 0 store result score #temp worldtool run data modify storage worldtool:storage Temp.Size set from storage rx.playerdb:io player.data.WorldTool.Future[1].Size

data modify storage rx.playerdb:io player.data.WorldTool.History append from storage rx.playerdb:io player.data.WorldTool.Current
data modify storage rx.playerdb:io player.data.WorldTool.Current set from storage rx.playerdb:io player.data.WorldTool.Future[0]
data remove storage rx.playerdb:io player.data.WorldTool.Future[0]

execute if score #temp worldtool matches 0 run data modify storage rx.playerdb:io player.data.WorldTool.History append from storage rx.playerdb:io player.data.WorldTool.Current
execute if score #temp worldtool matches 0 run data modify storage rx.playerdb:io player.data.WorldTool.Current set from storage rx.playerdb:io player.data.WorldTool.Future[0]
execute if score #temp worldtool matches 0 run data remove storage rx.playerdb:io player.data.WorldTool.Future[0]

function #rx.playerdb:api/v2/save/self

function worldtool:ui_general/options/menu

function worldtool:ui_general/options/save_load_area/remove_load_tags

tag @s add wt.load_area.redo
tag @s add wt.setup.load_area

function worldtool:process_start/common/load

# Called by worldtool:ui_general/options/menu
# Starts the undo process

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load

function #rx.playerdb:api/v2/get/self

execute unless data storage rx.playerdb:io player.data.WorldTool.Future run data modify storage rx.playerdb:io player.data.WorldTool.Future set value []

scoreboard players set #temp worldtool -1
scoreboard players set #temp2 worldtool -1
scoreboard players set #temp3 worldtool -1
scoreboard players set #temp4 worldtool -1
scoreboard players set #temp5 worldtool -1
execute store result score #temp worldtool if data storage rx.playerdb:io player.data.WorldTool.History[]
execute if score #temp worldtool matches 2.. run data modify storage worldtool:storage Temp.Pos set from storage rx.playerdb:io player.data.WorldTool.History[-1].Pos
execute if score #temp worldtool matches 2.. store result score #temp2 worldtool run data modify storage worldtool:storage Temp.Pos set from storage rx.playerdb:io player.data.WorldTool.History[-2].Pos
execute if score #temp2 worldtool matches 0 run data modify storage worldtool:storage Temp.Size set from storage rx.playerdb:io player.data.WorldTool.History[-1].Size
execute if score #temp2 worldtool matches 0 store result score #temp2 worldtool run data modify storage worldtool:storage Temp.Size set from storage rx.playerdb:io player.data.WorldTool.History[-2].Size

function worldtool:ui_general/options/save_load/undo/move_history

execute if score #temp2 worldtool matches 0 run function worldtool:ui_general/options/save_load/undo/move_history

execute if score #temp worldtool matches 3.. if score #temp2 worldtool matches 0 store result score #temp3 worldtool run data modify storage worldtool:storage Temp.Pos set from storage rx.playerdb:io player.data.WorldTool.History[-3].Pos
execute if score #temp worldtool matches 3.. if score #temp2 worldtool matches 0 if score #temp3 worldtool matches 0 store result score #temp3 worldtool run data modify storage worldtool:storage Temp.Size set from storage rx.playerdb:io player.data.WorldTool.History[-3].Size
execute if score #temp worldtool matches 3.. if score #temp2 worldtool matches 0 if score #temp3 worldtool matches 0 if data storage rx.playerdb:io player.data.WorldTool.Current store result score #temp4 worldtool run data modify storage worldtool:storage Temp.Pos set from storage rx.playerdb:io player.data.WorldTool.Current.Pos
execute if score #temp worldtool matches 3.. if score #temp2 worldtool matches 0 if score #temp3 worldtool matches 0 if data storage rx.playerdb:io player.data.WorldTool.Current store result score #temp5 worldtool run data modify storage worldtool:storage Temp.Size set from storage rx.playerdb:io player.data.WorldTool.Current.Size

scoreboard players set #temp6 worldtool 0
execute if score #temp4 worldtool matches 1.. run scoreboard players set #temp6 worldtool 1
execute if score #temp5 worldtool matches 1.. run scoreboard players set #temp6 worldtool 1

execute if score #temp6 worldtool matches 1 run function worldtool:ui_general/options/save_load/undo/move_history

function #rx.playerdb:api/v2/save/self

function worldtool:ui_general/options/menu

function worldtool:ui_general/options/save_load/remove_load_tags

tag @s add wt.load_area.undo
tag @s add wt.setup.load_area

function worldtool:process_start/common/load

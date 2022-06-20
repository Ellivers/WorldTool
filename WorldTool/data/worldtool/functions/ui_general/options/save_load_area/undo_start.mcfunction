# Called by worldtool:ui_general/options/menu
# Starts the undo process

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load

function #rx.playerdb:api/v2/get/self

execute unless data storage rx.playerdb:io player.data.WorldTool.Future run data modify storage rx.playerdb:io player.data.WorldTool.Future set value []

scoreboard players set #temp worldtool -1
execute store result score #temp worldtool if data storage rx.playerdb:io player.data.WorldTool.History[]
execute if score #temp worldtool matches 2.. run data modify storage worldtool:storage Temp.Pos set from storage rx.playerdb:io player.data.WorldTool.History[-1].Pos
execute if score #temp worldtool matches 2.. store result score #temp worldtool run data modify storage worldtool:storage Temp.Pos set from storage rx.playerdb:io player.data.WorldTool.History[-2].Pos
execute if score #temp worldtool matches 0 run data modify storage worldtool:storage Temp.Size set from storage rx.playerdb:io player.data.WorldTool.History[-1].Size
execute if score #temp worldtool matches 0 store result score #temp worldtool run data modify storage worldtool:storage Temp.Size set from storage rx.playerdb:io player.data.WorldTool.History[-2].Size

data modify storage rx.playerdb:io player.data.WorldTool.Future prepend from storage rx.playerdb:io player.data.WorldTool.Current
data modify storage rx.playerdb:io player.data.WorldTool.Current set from storage rx.playerdb:io player.data.WorldTool.History[-1]
data remove storage rx.playerdb:io player.data.WorldTool.History[-1]

execute if score #temp worldtool matches 0 run data modify storage rx.playerdb:io player.data.WorldTool.Future prepend from storage rx.playerdb:io player.data.WorldTool.Current
execute if score #temp worldtool matches 0 run data modify storage rx.playerdb:io player.data.WorldTool.Current set from storage rx.playerdb:io player.data.WorldTool.History[-1]
execute if score #temp worldtool matches 0 run data remove storage rx.playerdb:io player.data.WorldTool.History[-1]

function #rx.playerdb:api/v2/save/self

function worldtool:ui_general/options/menu

function worldtool:ui_general/options/save_load_area/remove_load_tags

tag @s add wt.load_area.undo
tag @s add wt.setup.load_area

function worldtool:process_start/common/load

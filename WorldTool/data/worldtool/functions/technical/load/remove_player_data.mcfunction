# Called recursively and by worldtool:technical/load
# Removes WorldTool's player data stored with PlayerDB

scoreboard players add #temp2 worldtool 1

data modify storage worldtool:storage Temp.TemplateList set from storage rx.playerdb:main players[0].data.WorldTool.Clipboard.TemplateList
execute if data storage rx.playerdb:main players[0].data.WorldTool.Clipboard run function worldtool:technical/common/save_load_area/restock_slots
data remove storage rx.playerdb:main players[0].data.WorldTool.Clipboard

data modify storage worldtool:storage Temp.TemplateList set from storage rx.playerdb:main players[0].data.WorldTool.Current.TemplateList
execute if data storage rx.playerdb:main players[0].data.WorldTool.Current run function worldtool:technical/common/save_load_area/restock_slots
data remove storage rx.playerdb:main players[0].data.WorldTool.Current

data modify storage worldtool:storage Temp.List set from storage rx.playerdb:main players[0].data.WorldTool.History
execute if data storage rx.playerdb:main players[0].data.WorldTool.History[0] run function worldtool:technical/common/save_load_area/restock_from_list
data remove storage rx.playerdb:main players[0].data.WorldTool.History

data modify storage worldtool:storage Temp.List set from storage rx.playerdb:main players[0].data.WorldTool.Clipboard.Future
execute if data storage rx.playerdb:main players[0].data.WorldTool.Clipboard.Future[0] run function worldtool:technical/common/save_load_area/restock_from_list
data remove storage rx.playerdb:main players[0].data.WorldTool.Clipboard.Future

data remove storage rx.playerdb:main players[0].data.WorldTool

data modify storage rx.playerdb:main players append from storage rx.playerdb:main players[0]
data remove storage rx.playerdb:main players[0]

execute unless score #temp2 worldtool >= #temp worldtool run function worldtool:technical/load/remove_player_data

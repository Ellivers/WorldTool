# Called recursively and by worldtool:technical/load
# Removes WorldTool's player data stored with PlayerDB

scoreboard players add #temp2 worldtool 1

data remove storage rx.playerdb:main players[0].data.WorldTool.Clipboard
data remove storage rx.playerdb:main players[0].data.WorldTool.Current
data remove storage rx.playerdb:main players[0].data.WorldTool.History
data remove storage rx.playerdb:main players[0].data.WorldTool.Future

data modify storage rx.playerdb:main players append from storage rx.playerdb:main players[0]
data remove storage rx.playerdb:main players[0]

execute unless score #temp2 worldtool >= #temp worldtool run function worldtool:technical/load/remove_player_data

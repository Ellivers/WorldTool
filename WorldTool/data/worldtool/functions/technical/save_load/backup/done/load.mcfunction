# Called by worldtool:technical/common/save_load/area_saved
# Saves the area data

function #rx.playerdb:api/v2/get/self

data modify storage worldtool:storage Temp.AreaListList set from storage rx.playerdb:io player.data.WorldTool.Future
execute if data storage rx.playerdb:io player.data.WorldTool.Future[0] run function worldtool:technical/common/save_load/restock_from_area_list_list
data remove storage rx.playerdb:io player.data.WorldTool.Future

data modify storage rx.playerdb:io player.data.WorldTool.History append from storage rx.playerdb:io player.data.WorldTool.Current

scoreboard players operation #temp2 worldtool = $maxBackups worldtool
scoreboard players operation #temp2 worldtool *= #2 worldtool

execute store result score #temp worldtool if data storage rx.playerdb:io player.data.WorldTool.History[]
execute if score #temp worldtool >= #temp2 worldtool run data modify storage worldtool:storage Temp.AreaList set from storage rx.playerdb:io player.data.WorldTool.History[0]
execute if score #temp worldtool >= #temp2 worldtool run function worldtool:technical/common/save_load/restock_from_area_list
execute if score #temp worldtool >= #temp2 worldtool run data remove storage rx.playerdb:io player.data.WorldTool.History[0]

data modify storage rx.playerdb:io player.data.WorldTool.Current set value []
function worldtool:technical/save_load/backup/done/set_area_data_values

function #rx.playerdb:api/v2/save/self

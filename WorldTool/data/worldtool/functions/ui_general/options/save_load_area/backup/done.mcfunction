# Called by worldtool:technical/common/save_load_area/area_saved
# Saves the area data

function #rx.playerdb:api/v2/get/self

data modify storage worldtool:storage Temp.List set from storage rx.playerdb:io player.data.WorldTool.Future
execute if data storage rx.playerdb:io player.data.WorldTool.Future[0] run function worldtool:technical/common/save_load_area/restock_from_list
data remove storage rx.playerdb:io player.data.WorldTool.Future

data modify storage worldtool:storage Temp.TemplateList set from storage rx.playerdb:io player.data.WorldTool.Current.TemplateList
execute if data storage rx.playerdb:io player.data.WorldTool.Current run function worldtool:technical/common/save_load_area/restock_slots
data remove storage rx.playerdb:io player.data.WorldTool.Current

execute store result score #temp worldtool if data storage rx.playerdb:io player.data.WorldTool.History[]
execute if score #temp worldtool >= $maxBackups worldtool run data modify storage worldtool:storage Temp.TemplateList set from storage rx.playerdb:io player.data.WorldTool.History[0].TemplateList
execute if score #temp worldtool >= $maxBackups worldtool run function worldtool:technical/common/save_load_area/restock_slots
execute if score #temp worldtool >= $maxBackups worldtool run data remove storage rx.playerdb:io player.data.WorldTool.History[0]

execute unless data storage rx.playerdb:io player.data.WorldTool.History run data modify storage rx.playerdb:io player.data.WorldTool.History set value []
data modify storage rx.playerdb:io player.data.WorldTool.History append value {Pos:[0d,0d,0d],TemplateList:[]}
data modify storage rx.playerdb:io player.data.WorldTool.History[-1].TemplateList set from storage worldtool:storage Processes[-1].Output

execute store result storage rx.playerdb:io player.data.WorldTool.History[-1].Pos[0] double 1 run scoreboard players get #pos1xo worldtool
execute store result storage rx.playerdb:io player.data.WorldTool.History[-1].Pos[1] double 1 run scoreboard players get #pos1yo worldtool
execute store result storage rx.playerdb:io player.data.WorldTool.History[-1].Pos[2] double 1 run scoreboard players get #pos1zo worldtool

function #rx.playerdb:api/v2/save/self

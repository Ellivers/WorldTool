# Called by worldtool:technical/common/save_load/area_saved
# Saves the area data

function #rx.playerdb:api/v2/get/self

data modify storage worldtool:storage Temp.List set from storage rx.playerdb:io player.data.WorldTool.Future
execute if data storage rx.playerdb:io player.data.WorldTool.Future[0] run function worldtool:technical/common/save_load/restock_from_area_list
data remove storage rx.playerdb:io player.data.WorldTool.Future

data modify storage rx.playerdb:io player.data.WorldTool.History append from storage rx.playerdb:io player.data.WorldTool.Current

scoreboard players operation #temp2 worldtool = $maxBackups worldtool
scoreboard players operation #temp2 worldtool *= #2 worldtool

execute store result score #temp worldtool if data storage rx.playerdb:io player.data.WorldTool.History[]
execute if score #temp worldtool >= #temp2 worldtool run data modify storage worldtool:storage Temp.TemplateList set from storage rx.playerdb:io player.data.WorldTool.History[0].TemplateList
execute if score #temp worldtool >= #temp2 worldtool run function worldtool:technical/common/save_load/restock_slots
execute if score #temp worldtool >= #temp2 worldtool run data remove storage rx.playerdb:io player.data.WorldTool.History[0]

data modify storage rx.playerdb:io player.data.WorldTool.Current set value {Pos:[0d,0d,0d],TemplateList:[]}
data modify storage rx.playerdb:io player.data.WorldTool.Current.TemplateList set from storage worldtool:storage Processes[-1].Output

execute store result storage rx.playerdb:io player.data.WorldTool.Current.Pos[0] double 1 run scoreboard players get #pos1xo worldtool
execute store result storage rx.playerdb:io player.data.WorldTool.Current.Pos[1] double 1 run scoreboard players get #pos1yo worldtool
execute store result storage rx.playerdb:io player.data.WorldTool.Current.Pos[2] double 1 run scoreboard players get #pos1zo worldtool

scoreboard players operation #sizeX worldtool = #pos2xo worldtool
scoreboard players operation #sizeX worldtool -= #pos1xo worldtool
scoreboard players add #sizeX worldtool 1
scoreboard players operation #sizeY worldtool = #pos2yo worldtool
scoreboard players operation #sizeY worldtool -= #pos1yo worldtool
scoreboard players add #sizeY worldtool 1
scoreboard players operation #sizeZ worldtool = #pos2zo worldtool
scoreboard players operation #sizeZ worldtool -= #pos1zo worldtool
scoreboard players add #sizeZ worldtool 1

data modify storage rx.playerdb:io player.data.WorldTool.Current.Size set value [0,0,0]
execute store result storage rx.playerdb:io player.data.WorldTool.Current.Size[0] int 1 run scoreboard players get #sizeX worldtool
execute store result storage rx.playerdb:io player.data.WorldTool.Current.Size[1] int 1 run scoreboard players get #sizeY worldtool
execute store result storage rx.playerdb:io player.data.WorldTool.Current.Size[2] int 1 run scoreboard players get #sizeZ worldtool

function #rx.playerdb:api/v2/save/self

# Called by worldtool:process_start/brush/area/load
# Preparations for selecting the area

scoreboard players set #temp3 worldtool 1

function worldtool:technical/common/get_item_data
execute store result score #brushSize_temp worldtool run data get storage worldtool:storage Temp.ItemData.WorldTool.BrushSettings.Size

execute if score #brushSize_temp worldtool matches 2.. run function worldtool:process_start/brush/area/normal/expand

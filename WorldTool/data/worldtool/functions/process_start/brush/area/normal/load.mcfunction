# Called by worldtool:process_start/brush/area/load
# Preparations for selecting the area

scoreboard players set #temp3 worldtool 1

execute store result score #brushSize_temp worldtool run data get entity @s SelectedItem.tag.WorldTool.BrushSettings.Size

execute if score #brushSize_temp worldtool matches 2.. run function worldtool:process_start/brush/area/normal/expand

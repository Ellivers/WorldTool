# Called by worldtool:use_brush/area/load

scoreboard players set #temp3 worldtool 1

function worldtool:use_brush/get_axis/load

execute store result score #brushSize_temp worldtool run data get entity @s SelectedItem.tag.WorldTool.BrushSettings.Size

execute if score #brushSize_temp worldtool matches 2.. run function worldtool:use_brush/area/flat/expand

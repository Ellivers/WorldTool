# Called by worldtool:ui_brush/menu
# Decreases the brush size by 2

function worldtool:ui_brush/check_tool

execute store result score #temp worldtool run data get entity @s SelectedItem.tag.WorldTool.BrushSettings.MaxSize
execute store result score #temp2 worldtool run data get entity @s SelectedItem.tag.WorldTool.BrushSettings.MinSize

execute store result score #brushSize_temp worldtool run data get entity @s SelectedItem.tag.WorldTool.BrushSettings.Size

scoreboard players remove #brushSize_temp worldtool 2
scoreboard players operation #temp3 worldtool = #brushSize_temp worldtool
scoreboard players operation #temp3 worldtool %= #2 worldtool
execute if score #temp3 worldtool matches 0 run scoreboard players add #brushSize_temp worldtool 1
execute if score #brushSize_temp worldtool < #temp2 worldtool run scoreboard players operation #brushSize_temp worldtool = #temp worldtool

execute store result storage worldtool:storage Temp.BrushSize int 1 run scoreboard players get #brushSize_temp worldtool
item modify entity @s weapon.mainhand worldtool:brush_tool/settings/set_size

function worldtool:ui_brush/menu

# Called by worldtool:ui_brush/menu
# Increases the brush size by 2

function worldtool:ui_brush/check_tool

execute store result score #temp worldtool run data get entity @s SelectedItem.tag.WorldTool.BrushSettings.MaxSize
execute store result score #temp2 worldtool run data get entity @s SelectedItem.tag.WorldTool.BrushSettings.MinSize

scoreboard players add @s wt.brush_size 2
execute if score @s wt.brush_size > #temp worldtool run scoreboard players operation @s wt.brush_size = #temp2 worldtool

function worldtool:ui_brush/menu

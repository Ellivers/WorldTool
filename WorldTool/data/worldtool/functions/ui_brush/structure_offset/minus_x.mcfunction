# Called by worldtool:ui_brush/structure_offset/menu
# Adjusts the structure offset

function worldtool:ui_brush/check_tool

execute store result score #offset worldtool run data get entity @s SelectedItem.tag.WorldTool.BrushSettings.StructureOffset.posX

scoreboard players operation #temp worldtool = $templateSizeLimit worldtool
scoreboard players operation #temp worldtool *= #-1 worldtool

execute unless score #offset worldtool <= #temp worldtool run scoreboard players remove #offset worldtool 1
execute store result storage worldtool:storage Temp.Offset int 1 run scoreboard players get #offset worldtool

item modify entity @s weapon.mainhand worldtool:brush_tool/settings/structure_offset/set_x

function worldtool:ui_brush/structure_offset/menu

# Called by worldtool:ui_brush/structure_offset/menu
# Adjusts the structure offset

function worldtool:ui_brush/check_tool

function worldtool:technical/common/get_item_data
execute store result score #offset worldtool run data get storage worldtool:storage Temp.ItemData.WorldTool.BrushSettings.StructureOffset.posY

scoreboard players operation #temp worldtool = $templateSizeLimit worldtool

execute unless score #offset worldtool >= #temp worldtool run scoreboard players add #offset worldtool 1
execute store result storage worldtool:storage Temp.Offset int 1 run scoreboard players get #offset worldtool

function worldtool:modify_item/brush_tool/settings/structure_offset/set_y

function worldtool:ui_brush/structure_offset/menu

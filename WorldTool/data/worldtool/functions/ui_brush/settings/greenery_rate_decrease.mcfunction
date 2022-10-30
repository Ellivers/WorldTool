# Called by worldtool:ui_brush/menu
# Decreases the greenery plant rate by 5%

function worldtool:ui_brush/check_tool

execute store result score #temp worldtool run data get entity @s SelectedItem.tag.WorldTool.BrushSettings.GreeneryRate

scoreboard players remove #temp worldtool 5
execute if score #temp worldtool matches ..-1 run scoreboard players set #temp worldtool 100

execute store result storage worldtool:storage Temp.GreeneryRate int 1 run scoreboard players get #temp worldtool

item modify entity @s weapon.mainhand worldtool:brush_tool/settings/set_greenery_rate

function worldtool:ui_brush/menu

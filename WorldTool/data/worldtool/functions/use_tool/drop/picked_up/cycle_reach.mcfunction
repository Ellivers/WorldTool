# Called by worldtool:use_tool/drop/picked_up/tools/general, worldtool:use_tool/drop/picked_up/tools/brush, and worldtool:use_tool/drop/picked_up/tools/shapes
# Cycles the tool's range value

execute store result score #temp worldtool run data get entity @s SelectedItem.tag.WorldTool.Reach
scoreboard players add #temp worldtool 10
execute if score #temp worldtool matches 40.. run scoreboard players set #temp worldtool 5

title @s actionbar [{"nbt":"Translation.\"label.range\"","storage": "worldtool:storage","color": "light_purple"},{"score":{"name": "#temp","objective": "worldtool"}}]

execute store result storage worldtool:storage Temp.Reach int 1 run scoreboard players get #temp worldtool
item modify entity @s weapon.mainhand worldtool:settings/set_reach

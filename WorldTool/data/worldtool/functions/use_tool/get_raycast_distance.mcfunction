# Called by worldtool:use_tool/click/use and worldtool:use_tool/hold/load
# Gets the distance 

execute store result score #temp2 worldtool run data get entity @s SelectedItem.tag.WorldTool.Reach
execute if score #temp2 worldtool matches ..0 run scoreboard players operation #temp2 worldtool = $maxRaycastingDistance worldtool

scoreboard players operation #temp2 worldtool *= #2 worldtool

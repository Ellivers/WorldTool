# Called by and

# temp = distance raycasted
# temp2 = max raycast distance
# both of these are measured in half blocks

# Get the max raycast distance
execute store result score #temp2 worldtool run data get entity @s SelectedItem.tag.WorldTool.Reach
execute if score #temp2 worldtool matches ..0 run scoreboard players operation #temp2 worldtool = $maxRaycastingDistance worldtool
scoreboard players operation #temp2 worldtool *= #2 worldtool

scoreboard players set #raycastComplete worldtool 0
scoreboard players set #temp worldtool 0
execute anchored eyes positioned ^ ^ ^ run function worldtool:use_tool/raycast/ray

execute if score #raycastComplete worldtool matches 0 if entity @s[tag=wt.raycast.hold] run function worldtool:use_tool/hold/remove_highlight
function #worldtool:hooks/use_tool/raycast/after

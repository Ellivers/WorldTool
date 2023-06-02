# Called by worldtool:use_tool/click/use and worldtool:use_tool/hold/load

tag @s remove wt.raycast_type.through
tag @s remove wt.raycast_type.hybrid
tag @s[predicate=worldtool:tools/general,predicate=worldtool:tools/settings/control_scheme/limited,predicate=!worldtool:tools/settings/stop_at_block] add wt.raycast_type.through
tag @s[predicate=worldtool:tools/general,predicate=worldtool:tools/settings/control_scheme/limited,predicate=worldtool:tools/settings/stop_at_block] add wt.raycast_type.hybrid
tag @s[tag=wt.tool.brush,predicate=worldtool:tools/settings/control_scheme/limited,predicate=!worldtool:tools/settings/stop_at_block] add wt.raycast_type.through
tag @s[tag=wt.tool.brush,predicate=worldtool:tools/settings/control_scheme/limited,predicate=worldtool:tools/settings/stop_at_block] add wt.raycast_type.hybrid
tag @s[tag=wt.tool.shapes,predicate=worldtool:tools/settings/control_scheme/limited,predicate=!worldtool:tools/settings/stop_at_block] add wt.raycast_type.through
tag @s[tag=wt.tool.shapes,predicate=worldtool:tools/settings/control_scheme/limited,predicate=worldtool:tools/settings/stop_at_block] add wt.raycast_type.hybrid

function #worldtool:hooks/use_tool/raycast/get_type

# temp = distance raycasted
# temp2 = max raycast distance
# both of these are measured in half blocks

# Get the max raycast distance
execute store result score #temp2 worldtool run data get entity @s SelectedItem.tag.WorldTool.Reach
execute if score #temp2 worldtool matches ..0 run scoreboard players operation #temp2 worldtool = $maxRaycastingDistance worldtool
scoreboard players operation #temp2 worldtool *= #2 worldtool

scoreboard players set #raycastComplete worldtool 0
scoreboard players set #temp worldtool 0
execute if entity @s[tag=!wt.raycast_type.through,tag=!wt.raycast_type.hybrid] anchored eyes positioned ^ ^ ^ run function worldtool:use_tool/raycast/ray_stop
execute if entity @s[tag=wt.raycast_type.through] anchored eyes positioned ^ ^ ^ run function worldtool:use_tool/raycast/ray_through
execute if entity @s[tag=wt.raycast_type.hybrid] anchored eyes positioned ^ ^ ^ run function worldtool:use_tool/raycast/ray_hybrid

tag @s remove wt.raycast_type.through
tag @s remove wt.raycast_type.hybrid

execute if score #raycastComplete worldtool matches 0 if entity @s[tag=wt.raycast.hold] run function worldtool:use_tool/hold/remove_highlight
function #worldtool:hooks/use_tool/raycast/after

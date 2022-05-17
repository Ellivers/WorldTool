# Called by worldtool:use_tool/load
# Commands for right-clicking a worldtool tool

execute unless score @s wt.ID matches 1.. run function worldtool:use_tool/assign_id

## Add tags ##
tag @s add wt.raycast_normal
execute if predicate worldtool:tools/general/pos1 run tag @s add wt.tool.general.pos1
execute if predicate worldtool:tools/general/pos2 run tag @s add wt.tool.general.pos2
execute if predicate worldtool:tools/general/clonepos run tag @s add wt.tool.general.clonepos
execute if predicate worldtool:tools/general/random_pos1 run tag @s add wt.tool.general.random_pos1
execute if predicate worldtool:tools/general/random_pos2 run tag @s add wt.tool.general.random_pos2
execute if predicate worldtool:tools/general/pick_block run tag @s add wt.tool.general.pick_block

execute if predicate worldtool:tools/brush run tag @s add wt.tool.brush
execute if predicate worldtool:tools/shapes run tag @s add wt.tool.shapes

#execute if entity @s[tag=wt.tool.brush,predicate=!worldtool:brush_tool/brushes/none] unless entity @s[predicate=worldtool:brush_tool/settings/before_block,tag=!wt.brush.pick_block] run tag @s add wt.raycast_normal
execute if entity @s[tag=wt.tool.brush,predicate=!worldtool:brush_tool/brushes/none,predicate=worldtool:brush_tool/settings/before_block,tag=!wt.brush.pick_block] run tag @s add wt.raycast_before

function #worldtool:addon/use_tool/add_tags

## Raycasting stuff ##
# temp = distance raycasted
# temp2 = max raycast distance
# both of these are measured in half blocks
scoreboard players operation #temp2 worldtool = $maxRaycastingDistance worldtool
scoreboard players operation #temp2 worldtool *= #2 worldtool
scoreboard players reset #temp worldtool
execute unless entity @s[tag=!wt.raycast_normal,tag=!wt.raycast_before] anchored eyes positioned ^ ^ ^ run function worldtool:use_tool/raycast

## Menu stuff ##
execute unless entity @s[tag=!wt.tool.general.pos1,tag=!wt.tool.general.pos2] run function worldtool:ui_general/click/load

## Remove tags ##
function worldtool:use_tool/remove_tags

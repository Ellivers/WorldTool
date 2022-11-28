# Called by worldtool:use_tool/load
# Commands for right-clicking a worldtool tool

execute unless score @s wt.ID matches 1.. run function worldtool:use_tool/assign_id

## Remove tags ##
function worldtool:use_tool/remove_tags

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

execute if entity @s[tag=wt.tool.shapes,tag=!wt.pick_block.other] run tag @s remove wt.raycast_normal
execute if entity @s[tag=wt.tool.shapes,tag=!wt.pick_block.other] run tag @s add wt.raycast_before

execute if entity @s[tag=wt.tool.brush,predicate=worldtool:brush_tool/settings/before_block,tag=!wt.brush.pick_block] run tag @s remove wt.raycast_normal
execute if entity @s[tag=wt.tool.brush,predicate=worldtool:brush_tool/settings/before_block,tag=!wt.brush.pick_block] run tag @s add wt.raycast_before

function #worldtool:hooks/use_tool/add_tags

tag @s[tag=!wt.user,predicate=worldtool:tools/general] remove wt.raycast_normal
tag @s[tag=!wt.user,predicate=worldtool:tools/general] remove wt.raycast_before

## Raycasting stuff ##
# temp = distance raycasted
# temp2 = max raycast distance
# both of these are measured in half blocks
scoreboard players operation #temp2 worldtool = $maxRaycastingDistance worldtool
scoreboard players operation #temp2 worldtool *= #2 worldtool
scoreboard players set #temp3 worldtool 0
scoreboard players set #temp worldtool 0
execute unless entity @s[tag=!wt.raycast_normal,tag=!wt.raycast_before] anchored eyes positioned ^ ^ ^ run function worldtool:use_tool/raycast

## Menu stuff ##
execute unless entity @s[tag=!wt.tool.general.pos1,tag=!wt.tool.general.pos2] if entity @s[tag=!wt.user] run function worldtool:ui/verify_operator/display
execute unless entity @s[tag=!wt.tool.general.pos1,tag=!wt.tool.general.pos2] if entity @s[tag=wt.user] run function worldtool:ui_general/click/display

## Remove tags ##
function worldtool:use_tool/remove_tags

# Called by worldtool:use_tool/click/load
# Commands for right-clicking a WorldTool tool

execute unless score @s wt.ID matches 1.. run function worldtool:technical/common/assign_id

## Remove tags ##
function worldtool:use_tool/remove_tags

## Add tags ##
function worldtool:use_tool/add_tags
tag @s[tag=!wt.user,predicate=worldtool:tools/general] remove wt.raycast_normal
tag @s[tag=!wt.user,predicate=worldtool:tools/general] remove wt.raycast_before

## Raycasting ##
execute unless entity @s[tag=!wt.raycast_normal,tag=!wt.raycast_before] run tag @s add wt.raycast.click
execute if entity @s[tag=wt.raycast.click] run function worldtool:use_tool/raycast/start

## Menu stuff ##
execute unless entity @s[tag=!wt.tool.general.pos1,tag=!wt.tool.general.pos2] if entity @s[tag=!wt.user] run function worldtool:ui/verify_operator/display
execute unless entity @s[tag=!wt.tool.general.pos1,tag=!wt.tool.general.pos2] if entity @s[tag=wt.user] run function worldtool:ui_general/click/display

## Remove tags ##
function worldtool:use_tool/remove_tags

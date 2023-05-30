# Called by worldtool:use_tool/hold/check
# Commands for holding a WorldTool tool

execute unless score @s wt.ID matches 1.. run function worldtool:technical/common/assign_id

## Remove tags ##
function worldtool:use_tool/remove_tags

## Add tags ##
function worldtool:use_tool/add_tags

tag @s[predicate=worldtool:tools/general] add wt.raycast.hold
tag @s[tag=wt.tool.brush] add wt.raycast.hold
tag @s[tag=wt.tool.shapes] add wt.raycast.hold
function #worldtool:hooks/use_tool/hold/get_highlight

## Raycasting ##
execute if entity @s[tag=wt.raycast.hold] unless entity @s[tag=!wt.raycast_normal,tag=!wt.raycast_before] run function worldtool:use_tool/raycast/start

## Remove tags ##
function worldtool:use_tool/remove_tags

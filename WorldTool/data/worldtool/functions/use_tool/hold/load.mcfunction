# Called by worldtool:use_tool/hold/check
# Commands for holding a WorldTool tool

execute unless score @s wt.ID matches 1.. run function worldtool:technical/common/assign_id

## Remove tags ##
function worldtool:use_tool/remove_tags

## Add tags ##
function worldtool:use_tool/add_tags

execute if entity @s[predicate=worldtool:tools/general] unless entity @s[predicate=!worldtool:tools/settings/highlight,predicate=!worldtool:tools/settings/control_scheme/limited] run tag @s add wt.raycast.hold
execute if entity @s[tag=wt.tool.brush] unless entity @s[predicate=!worldtool:tools/settings/highlight,predicate=!worldtool:tools/settings/control_scheme/limited] run tag @s add wt.raycast.hold
execute if entity @s[tag=wt.tool.shapes] unless entity @s[predicate=!worldtool:tools/settings/highlight,predicate=!worldtool:tools/settings/control_scheme/limited] run tag @s add wt.raycast.hold
function #worldtool:hooks/use_tool/hold/get_highlight

## Raycasting ##
execute if entity @s[tag=wt.raycast.hold] unless entity @s[tag=!wt.raycast_normal,tag=!wt.raycast_before] run function worldtool:use_tool/raycast/start

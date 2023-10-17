# Called by INSERT_FUNCTION
# Gets the axis to use for flat areas

scoreboard players set #temp.X worldtool 0
scoreboard players set #temp.Y worldtool 0
scoreboard players set #temp.Z worldtool 0

tag @s[predicate=!worldtool:shape_tool/shapes/2d_fill] add wt.direction_format.direction
tag @s[predicate=worldtool:shape_tool/shapes/2d_fill] add wt.direction_format.axis
function #worldtool:hooks/ui_shapes/direction_format/get

execute if entity @s[tag=wt.direction_format.axis,predicate=worldtool:shape_tool/settings/axis/x] run scoreboard players set #temp.X worldtool 1
execute if entity @s[tag=wt.direction_format.axis,predicate=worldtool:shape_tool/settings/axis/y] run scoreboard players set #temp.Y worldtool 1
execute if entity @s[tag=wt.direction_format.axis,predicate=worldtool:shape_tool/settings/axis/z] run scoreboard players set #temp.Z worldtool 1

execute if predicate worldtool:shape_tool/settings/axis/auto run function worldtool:process_start/brush/get_axis/auto

tag @s remove wt.direction_format.direction
tag @s remove wt.direction_format.axis
function #worldtool:hooks/ui_shapes/direction_format/remove_tags

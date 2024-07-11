# Called by worldtool:process_start/brush/load
# Different options for selecting an area for the brush process to use

scoreboard players set #offset1x worldtool 0
scoreboard players set #offset1y worldtool 0
scoreboard players set #offset1z worldtool 0
scoreboard players set #offset2x worldtool 0
scoreboard players set #offset2y worldtool 0
scoreboard players set #offset2z worldtool 0

execute if predicate worldtool:brush_tool/settings/flat unless entity @s[predicate=!worldtool:brush_tool/brushes/paint,predicate=!worldtool:brush_tool/brushes/place] run tag @s add wt.brush_area.flat
tag @s[tag=!wt.brush_area.flat] add wt.brush_area.normal

function #worldtool:hooks/process_start/brush/area/add_tags

execute if entity @s[tag=wt.brush_area.flat] run function worldtool:process_start/brush/area/flat/load
execute if entity @s[tag=wt.brush_area.normal] run function worldtool:process_start/brush/area/normal/load

function #worldtool:hooks/process_start/brush/area/remove_tags

tag @s remove wt.brush_area.flat
tag @s remove wt.brush_area.normal

function worldtool:process_start/brush/start/load

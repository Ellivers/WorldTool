# Called by worldtool:use_brush/check
# Sets the process block to the one selected for the brush

scoreboard players operation #ID_temp worldtool = @s wt.ID

tag @s remove wt.brush.primary
tag @s remove wt.brush.secondary

tag @s add wt.brush.primary
execute if predicate worldtool:brush_tool/brushes/replace run tag @s add wt.brush.secondary

function #worldtool:addon/use_brush/update_block/add_tags

execute if entity @s[tag=wt.brush.primary,predicate=!worldtool:brush_tool/settings/air] run function worldtool:use_brush/update_block/primary
execute if entity @s[tag=wt.brush.primary,predicate=worldtool:brush_tool/settings/air] run setblock 0 1 13 minecraft:air

execute if entity @s[tag=wt.brush.secondary,predicate=!worldtool:brush_tool/settings/air] run function worldtool:use_brush/update_block/secondary
execute if entity @s[tag=wt.brush.secondary,predicate=worldtool:brush_tool/settings/air] run setblock 2 1 13 minecraft:air

function #worldtool:addon/use_brush/update_block/remove_tags

tag @s remove wt.brush.primary
tag @s remove wt.brush.secondary

summon minecraft:marker ~ ~ ~ {Tags: ["worldtool","wt.brush_location"]}
scoreboard players operation @e[type=minecraft:marker,tag=worldtool,tag=wt.brush_location,sort=nearest,limit=1] wt.ID = #ID_temp worldtool
tag @s add wt.brush.scheduled
schedule function worldtool:use_brush/update_block/scheduled 2t

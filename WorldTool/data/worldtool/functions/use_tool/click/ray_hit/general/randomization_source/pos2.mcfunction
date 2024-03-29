# Called by worldtool:use_tool/click/ray_hit/load
# Sets random source position 2

scoreboard players set #success worldtool 1

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.randomization_source_corner.2] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:use_tool/click/ray_hit/general/delete_pos
execute if score $forceLoadPositions worldtool matches 1.. as @e[type=minecraft:marker,tag=worldtool,tag=wt.randomization_source_corner.1] unless score @s worldtool matches 1.. if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:technical/common/forceload/add

summon minecraft:marker ~ ~ ~ {Tags: ["worldtool", "wt.can_forceload", "wt.randomization_source_corner", "wt.randomization_source_corner.2", "wt.not_used_yet"]}
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.randomization_source_corner.2,sort=nearest,limit=1] at @s run function worldtool:use_tool/click/ray_hit/general/common

function worldtool:ui_general/randomize/set_source/confirm

particle minecraft:dust 0.808 0.718 0.024 1.5 ~-.5 ~-.5 ~-.5 0 -1 0 2 0 normal @s
particle minecraft:dust 0.808 0.718 0.024 1.5 ~.5 ~-.5 ~-.5 0 -1 0 2 0 normal @s
particle minecraft:dust 0.808 0.718 0.024 1.5 ~.5 ~-.5 ~.5 0 -1 0 2 0 normal @s
particle minecraft:dust 0.808 0.718 0.024 1.5 ~-.5 ~-.5 ~.5 0 -1 0 2 0 normal @s
particle minecraft:dust 0.808 0.718 0.024 1.5 ~-.5 ~.5 ~-.5 0 -1 0 2 0 normal @s
particle minecraft:dust 0.808 0.718 0.024 1.5 ~.5 ~.5 ~-.5 0 -1 0 2 0 normal @s
particle minecraft:dust 0.808 0.718 0.024 1.5 ~.5 ~.5 ~.5 0 -1 0 2 0 normal @s
particle minecraft:dust 0.808 0.718 0.024 1.5 ~-.5 ~.5 ~.5 0 -1 0 2 0 normal @s

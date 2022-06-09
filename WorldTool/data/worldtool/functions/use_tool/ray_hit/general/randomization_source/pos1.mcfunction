# Called by worldtool:use_tool/ray_hit/load
# Sets random source position 1

scoreboard players set #success worldtool 1

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.randomization_source_corner.1] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:use_tool/ray_hit/general/delete_pos

summon minecraft:marker ~ ~ ~ {Tags: ["worldtool", "wt.can_forceload", "wt.randomization_source_corner", "wt.randomization_source_corner.1"]}
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.randomization_source_corner.1,sort=nearest,limit=1] at @s run function worldtool:use_tool/ray_hit/general/common

function worldtool:ui_general/randomize/set_source/pos2

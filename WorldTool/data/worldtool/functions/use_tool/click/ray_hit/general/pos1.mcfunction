# Called by worldtool:use_tool/click/ray_hit/load
# Sets position 1 of the general tool

scoreboard players set #success worldtool 1

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:use_tool/click/ray_hit/general/delete_pos
execute if score $forceLoadPositions worldtool matches 1.. as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] unless score @s worldtool matches 1.. if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:technical/common/forceload/add

summon minecraft:marker ~ ~ ~ {Tags: ["worldtool", "wt.can_forceload", "wt.pos1", "wt.position"]}
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1,sort=nearest,limit=1] at @s run function worldtool:use_tool/click/ray_hit/general/common

particle minecraft:dust 0 0.3176470588235294 1 1.5 ~-.5 ~-.5 ~-.5 0 -1 0 2 0 normal @s
particle minecraft:dust 0 0.3176470588235294 1 1.5 ~.5 ~-.5 ~-.5 0 -1 0 2 0 normal @s
particle minecraft:dust 0 0.3176470588235294 1 1.5 ~.5 ~-.5 ~.5 0 -1 0 2 0 normal @s
particle minecraft:dust 0 0.3176470588235294 1 1.5 ~-.5 ~-.5 ~.5 0 -1 0 2 0 normal @s
particle minecraft:dust 0 0.3176470588235294 1 1.5 ~-.5 ~.5 ~-.5 0 -1 0 2 0 normal @s
particle minecraft:dust 0 0.3176470588235294 1 1.5 ~.5 ~.5 ~-.5 0 -1 0 2 0 normal @s
particle minecraft:dust 0 0.3176470588235294 1 1.5 ~.5 ~.5 ~.5 0 -1 0 2 0 normal @s
particle minecraft:dust 0 0.3176470588235294 1 1.5 ~-.5 ~.5 ~.5 0 -1 0 2 0 normal @s

tellraw @s ["\n",{"nbt":"Translation.\"info.set_pos1\"","storage": "worldtool:storage","interpret": true}]
tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load

execute if entity @s[tag=wt.helper_particles.always] as @e[type=minecraft:marker,tag=worldtool,tag=wt.position] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:ui_general/arrange_positions/as_entity

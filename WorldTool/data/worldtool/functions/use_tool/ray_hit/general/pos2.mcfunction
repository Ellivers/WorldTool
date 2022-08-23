# Called by worldtool:use_tool/ray_hit/load
# Sets position 2 of the general tool

scoreboard players set #success worldtool 1

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:use_tool/ray_hit/general/delete_pos

summon minecraft:marker ~ ~ ~ {Tags: ["worldtool", "wt.can_forceload", "wt.pos2", "wt.position"]}
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2,sort=nearest,limit=1] at @s run function worldtool:use_tool/ray_hit/general/common

tellraw @s ["\n",{"nbt":"Translation.\"info.set_pos2\"","storage": "worldtool:storage","interpret": true}]
tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load

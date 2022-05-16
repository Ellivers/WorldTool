# Called by worldtool:use_tool/ray_hit/load
# Sets position 1 of the general tool

scoreboard players set #success worldtool 1

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:use_tool/ray_hit/general/delete_pos

summon minecraft:marker ~ ~ ~ {Tags: ["worldtool", "wt.can_forceload", "wt.pos1", "wt.position"]}
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1,sort=nearest,limit=1] at @s run function worldtool:use_tool/ray_hit/general/common

execute if entity @s[tag=wt.in_menu] run function worldtool:ui/clear_chat
tag @s remove wt.in_menu
tellraw @s ["\n",{"nbt":"Translation.\"info.set_pos1\"","storage": "worldtool:storage","interpret": true}]
tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load

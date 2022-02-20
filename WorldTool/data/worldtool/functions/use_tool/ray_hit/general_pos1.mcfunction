# Called by worldtool:use_tool/ray_hit/load
# Sets position 1 of the general tool

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:use_tool/ray_hit/delete_pos

summon minecraft:marker ~ ~ ~ {Tags: ["worldtool", "wt.can_forceload", "wt.pos1", "wt.position"]}
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1,sort=nearest,limit=1] at @s run function worldtool:use_tool/ray_hit/common

tellraw @s [{"nbt":"Translation.\"info.pos1_set\"","storage": "worldtool:storage"},{"score":{"name": "#pos1xt","objective": "worldtool"}}," ",{"score":{"name": "#pos1yt","objective": "worldtool"}}," ",{"score":{"name": "#pos1zt","objective": "worldtool"}}]
tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load

# Called by worldtool:use_tool/ray_hit/load
# Sets position 2 of the general tool

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:use_tool/ray_hit/delete_pos

summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["worldtool", "wt.can_forceload", "wt.pos2"]}
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt.pos2,sort=nearest,limit=1] at @s run function worldtool:use_tool/ray_hit/common

tellraw @s [{"nbt":"Translation.\"info.pos2_set\"","storage": "worldtool:storage"},{"score":{"name": "#pos1xt","objective": "worldtool"}}," ",{"score":{"name": "#pos1yt","objective": "worldtool"}}," ",{"score":{"name": "#pos1zt","objective": "worldtool"}}]
tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load

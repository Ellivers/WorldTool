execute store result score #kill_wt_drawer worldtool run kill @e[type=minecraft:area_effect_cloud,tag=wt_drawer]
execute store result score #kill_clonepos worldtool run kill @e[type=minecraft:area_effect_cloud,tag=clonepos]
tag @e[type=minecraft:area_effect_cloud,tag=dostuff,tag=randompoint] remove dostuff
scoreboard players operation #kill_wt_drawer worldtool += #kill_clonepos worldtool
tellraw @s ["Killed ",{"score": {"name": "#kill_wt_drawer","objective": "worldtool"}}," entities"]

tag @s add nospaceplzthx
function worldtool:ui/anti_feedback_chat_message/load
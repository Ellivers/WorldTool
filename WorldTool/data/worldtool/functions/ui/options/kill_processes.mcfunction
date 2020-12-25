#execute store result score #kill_wt_drawer worldtool run kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_drawer]
#execute store result score #kill_clonepos worldtool run kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos]
#tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=dostuff,tag=randompoint] remove dostuff
#scoreboard players operation #kill_wt_drawer worldtool += #kill_clonepos worldtool
#tellraw @s ["Killed ",{"score": {"name": "#kill_wt_drawer","objective": "worldtool"}}," entities"]
tellraw @s "Killed running processes"
tag @s remove wt.started_function
scoreboard players reset #drawerError worldtool
scoreboard players set $functionRunning worldtool 0
scoreboard players set #displayLagWarning worldtool 1
#scoreboard players set $brushFunctionRunning worldtool 0
bossbar set worldtool:progress visible false

execute as @e[type=minecraft:area_effect_cloud,tag=wt_drawer,tag=worldtool] at @s run function worldtool:aligned_done

kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_drawer]

tag @s add nospaceplzthx
function worldtool:ui/anti_feedback_chat_message/load

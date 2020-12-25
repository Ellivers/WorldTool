# Start

tag @s add wt.started_function
function worldtool:ui/anti_feedback_chat_message/load
scoreboard players operation #ID_temp worldtool = @s wt_ID

scoreboard players set #posSelected worldtool 0
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2] if score @s[distance=0..] wt_ID = #ID_temp worldtool as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s[distance=0..] wt_ID = #ID_temp worldtool run scoreboard players set #posSelected worldtool 1

execute if score #posSelected worldtool matches 0 run function worldtool:ui/error.load
execute if score #posSelected worldtool matches 1 if score $functionRunning worldtool matches 1 run function worldtool:wait/start_waiting
execute if score #posSelected worldtool matches 1 unless score $functionRunning worldtool matches 1 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s[distance=0..] wt_ID = #ID_temp worldtool at @s run function worldtool:load_process/load_fill

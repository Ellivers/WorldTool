# Start

tag @s add wt_started_function
function worldtool:ui_general/anti_feedback_chat_message/load
scoreboard players operation #ID_temp worldtool = @s wt_ID

scoreboard players set #temp1 worldtool 0
scoreboard players set #temp2 worldtool 0
scoreboard players set #posSelected worldtool 0
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s[distance=0..] wt_ID = #ID_temp worldtool run tag @s add wt_selected
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2] if score @s[distance=0..] wt_ID = #ID_temp worldtool run tag @s add wt_selected

execute store result score #temp1 worldtool if entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1,tag=wt_selected]
execute store result score #temp2 worldtool if entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2,tag=wt_selected]

scoreboard players operation #posSelected worldtool = #temp1 worldtool
scoreboard players operation #posSelected worldtool += #temp2 worldtool

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s[distance=0..] wt_ID = #ID_temp worldtool run tag @s remove wt_selected
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2] if score @s[distance=0..] wt_ID = #ID_temp worldtool run tag @s remove wt_selected

execute if score #temp1 worldtool matches 2.. run function worldtool:ui_general/errors/too_many_pos1
execute if score #temp2 worldtool matches 2.. run function worldtool:ui_general/errors/too_many_pos2
execute if score #posSelected worldtool matches ..1 run function worldtool:ui_general/errors/load
execute if score #posSelected worldtool matches 2 if score $functionRunning worldtool matches 1 run function worldtool:wait/start_waiting
execute if score #posSelected worldtool matches 2 unless score $functionRunning worldtool matches 1 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s[distance=0..] wt_ID = #ID_temp worldtool at @s run function worldtool:load_process/load_fill

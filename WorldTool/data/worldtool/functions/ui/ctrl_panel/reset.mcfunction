function worldtool:ui/anti_feedback_chat_message/load

scoreboard objectives remove wt_brush_size
scoreboard objectives remove wt_click
scoreboard objectives remove rotX
scoreboard objectives remove rotY
scoreboard objectives remove rotZ
scoreboard objectives remove wt_ID
scoreboard objectives remove worldtool
scoreboard objectives remove wt_chance
scoreboard objectives remove pos1x
scoreboard objectives remove pos1y
scoreboard objectives remove pos1z
scoreboard objectives remove pos2x
scoreboard objectives remove pos2y
scoreboard objectives remove pos2z

tag @a remove placing_fill
tag @a remove randomizing
tag @a remove hollowing
tag @a remove placing_filtered
tag @a remove placing_filtered_reversed
tag @a remove replacing_fill1
tag @a remove replacing_fill2
tag @a remove grabbing_block
tag @a remove grabbing_block_replace
tag @a remove switch_block_brush
tag @a remove wt_outline_selection
tag @a remove atsetpos
tag @a remove in_menu

kill @e[type=minecraft:area_effect_cloud,tag=pos1]
kill @e[type=minecraft:area_effect_cloud,tag=pos2]
kill @e[type=minecraft:area_effect_cloud,tag=clonepos]
kill @e[type=minecraft:area_effect_cloud,tag=wt_drawer]
kill @e[type=minecraft:area_effect_cloud,tag=check_block]
kill @e[type=minecraft:area_effect_cloud,tag=randomcorner1]
kill @e[type=minecraft:area_effect_cloud,tag=randomcorner2]
kill @e[type=minecraft:area_effect_cloud,tag=cmdpos1]
kill @e[type=minecraft:area_effect_cloud,tag=cmdpos2]
kill @e[type=minecraft:area_effect_cloud,tag=cmdclonedest]
kill @e[type=minecraft:area_effect_cloud,tag=cmdrnd1]
kill @e[type=minecraft:area_effect_cloud,tag=cmdrnd2]
kill @e[type=minecraft:area_effect_cloud,tag=randompoint]

execute in minecraft:overworld run forceload remove 0 0
execute in minecraft:the_end run forceload remove 0 0
execute in minecraft:the_nether run forceload remove 0 0

function worldtool:ui/clear_chat

tellraw @a {"text": "WorldTool has been uninstalled","color":"green"}
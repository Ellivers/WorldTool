# Called by clickEvent from worldtool:ui/options/settings
# Removes everything added by WorldTool

function worldtool:ui/anti_feedback_chat_message/load

# Remove chunks forceloaded by WorldTool
execute in minecraft:overworld run forceload remove 0 0
execute in minecraft:the_nether run forceload remove 0 0
execute in minecraft:the_end run forceload remove 0 0

# Remove all objectives added by WorldTool
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
scoreboard objectives remove wt_raycast
scoreboard objectives remove wt_differenceX
scoreboard objectives remove wt_differenceY
scoreboard objectives remove wt_differenceZ
scoreboard objectives remove wt_temp_diffX
scoreboard objectives remove wt_temp_diffY
scoreboard objectives remove wt_temp_diffZ
scoreboard objectives remove wt_temp_prevposX
scoreboard objectives remove wt_temp_prevposY
scoreboard objectives remove wt_temp_prevposZ
scoreboard objectives remove wt_drop_coas

# Remove tags added by WorldTool from players
execute as @a run function worldtool:ui/player_removetags
tag @a remove fun_menu

# Remove entities summoned by WorldTool
execute as @e[type=minecraft:area_effect_cloud] unless entity @s[tag=!pos1,tag=!pos2,tag=!cmdpos1,tag=!cmdpos2] at @s run function worldtool:ray/del_pos
#kill @e[type=minecraft:area_effect_cloud,tag=pos1]
#kill @e[type=minecraft:area_effect_cloud,tag=pos2]
kill @e[type=minecraft:area_effect_cloud,tag=clonepos]
kill @e[type=minecraft:area_effect_cloud,tag=wt_drawer]
kill @e[type=minecraft:area_effect_cloud,tag=wt_check]
kill @e[type=minecraft:area_effect_cloud,tag=randomcorner1]
kill @e[type=minecraft:area_effect_cloud,tag=randomcorner2]
#kill @e[type=minecraft:area_effect_cloud,tag=cmdpos1]
#kill @e[type=minecraft:area_effect_cloud,tag=cmdpos2]
kill @e[type=minecraft:area_effect_cloud,tag=cmdclonedest]
kill @e[type=minecraft:area_effect_cloud,tag=cmdrnd1]
kill @e[type=minecraft:area_effect_cloud,tag=cmdrnd2]
kill @e[type=minecraft:area_effect_cloud,tag=randompoint]
kill @e[type=minecraft:armor_stand,tag=show_rot]

function worldtool:ui/clear_chat

tellraw @a {"text": "WorldTool has been uninstalled","color":"green"}
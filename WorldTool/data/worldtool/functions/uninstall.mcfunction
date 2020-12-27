#define tag worldtool

# Called by clickEvent from worldtool:ui/options/settings
# Removes everything added by WorldTool

data remove storage worldtool:storage {}

# Remove chunks forceloaded by WorldTool
execute in minecraft:overworld run forceload remove 0 0
execute in minecraft:the_nether run forceload remove 0 0
execute in minecraft:the_end run forceload remove 0 0

# Remove all objectives added by WorldTool
scoreboard objectives remove wt_brush_size
scoreboard objectives remove wt_click
scoreboard objectives remove wt_rotX
scoreboard objectives remove wt_rotY
scoreboard objectives remove wt_rotZ
scoreboard objectives remove wt_ID
scoreboard objectives remove worldtool
scoreboard objectives remove wt_chance
scoreboard objectives remove wt_pos1x
scoreboard objectives remove wt_pos1y
scoreboard objectives remove wt_pos1z
scoreboard objectives remove wt_pos2x
scoreboard objectives remove wt_pos2y
scoreboard objectives remove wt_pos2z
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
scoreboard objectives remove wt_queue_pos
scoreboard objectives remove wt_diameter
scoreboard objectives remove wt_height
scoreboard objectives remove wt_precision
scoreboard objectives remove wt_degrees

# Remove tags added by WorldTool from players
execute as @a run function worldtool:ui/player_removetags
tag @a remove fun_menu

# Remove entities summoned by WorldTool
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool] unless entity @s[tag=!pos1,tag=!pos2,tag=!cmdpos1,tag=!cmdpos2] at @s run function worldtool:ray/del_pos
kill @e[type=minecraft:area_effect_cloud,tag=worldtool]
kill @e[type=minecraft:armor_stand]
 #kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1]
 #kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2]
#kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos]
#kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_drawer]
#kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check]
#kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randomcorner1]
#kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randomcorner2]
 #kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1]
 #kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos2]
#kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdclonedest]
#kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdrnd1]
#kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdrnd2]
#kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randompoint]
#kill @e[type=minecraft:armor_stand,tag=show_rot]

function worldtool:ui/clear_chat

tellraw @a {"text": "WorldTool has been uninstalled","color":"green"}

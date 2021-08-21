# Add the 'worldtool' tag to all worldtool entities that don't have it
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool] unless entity @s[tag=!pos1,tag=!pos2,tag=!wt_drawer,tag=!wt_check,tag=!clonepos,tag=!brush_grab_marker,tag=!scheduled_circle,tag=!setblock_source,tag=!brushpos1,tag=!brushpos2,tag=!scheduled_sphere,tag=!clipboard_marker1,tag=!clipboard_marker2,tag=!cmdpos1,tag=!cmdpos2,tag=!cmdclonedest,tag=!cmdpos1marker,tag=!cmdpos2marker,tag=!cmdrnd1,tag=!cmdrnd2,tag=!randompointcmd,tag=!wt_clone_preview_pos1,tag=!wt_clone_preview_pos2,tag=!wt_particles,tag=!randompoint,tag=!wt_waiting_marker,tag=!randomcorner1,tag=!randomcorner2] run tag @s add worldtool
tag @e[type=minecraft:armor_stand,tag=show_rot] add worldtool

# Sadly the ID system was broken in earlier versions. To make sure it works, all ID-related entities and scores are removed when upgrading.
scoreboard players reset * wt_ID
kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1]
kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2]
kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randomcorner1]
kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randomcorner2]

# Remove old objective names
scoreboard objectives remove pos1x
scoreboard objectives remove pos1y
scoreboard objectives remove pos1z
scoreboard objectives remove pos2x
scoreboard objectives remove pos2y
scoreboard objectives remove pos2z
scoreboard objectives remove rotX
scoreboard objectives remove rotY
scoreboard objectives remove rotZ

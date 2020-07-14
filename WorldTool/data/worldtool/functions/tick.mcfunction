#If something is done
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool = $pos2z worldtool as @e[type=minecraft:area_effect_cloud,tag=wt_drawer,tag=!ticking] run function worldtool:aligned_done
#If someone dropped one of these tools
execute as @e[type=minecraft:item,nbt={Age:0s,Item:{tag:{worldTool:1b}}}] at @s run function worldtool:coas/dropped_coas

#The player gets to do stuff too
execute if score $clonePreviewDelay worldtool matches 1.. if entity @a[tag=wt_clone_preview] run function worldtool:particles/clone_preview/delay
execute as @a at @s run function worldtool:player_tick
#Check for a block while in menus
execute as @e[type=minecraft:area_effect_cloud,tag=wt_check,tag=!waiting] at @s run function worldtool:block_check/main
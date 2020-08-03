# If a process is done
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool = $pos2z worldtool as @e[type=minecraft:area_effect_cloud,tag=wt_drawer,tag=!ticking] run function worldtool:aligned_done

# The player gets to do stuff too
execute as @a at @s run function worldtool:player_tick
# Check for a block while in some menus
execute as @e[type=minecraft:area_effect_cloud,tag=wt_check,tag=!waiting] at @s run function worldtool:block_check/main
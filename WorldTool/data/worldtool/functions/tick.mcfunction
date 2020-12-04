# Called by #minecraft:tick
# If a process is done
execute if score $functionRunning worldtool matches 1 if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool = $pos2z worldtool as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_drawer,tag=!ticking] run function worldtool:aligned_done

# If a function is running and monitor performance is on
execute if score $functionRunning worldtool matches 1 if score $monitorPerformance worldtool matches 1.. run function worldtool:monitor_performance/tick

# The player gets to do stuff too
execute as @a at @s run function worldtool:player_tick
# Check for a block while in some menus
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check,tag=!waiting] at @s run function worldtool:block_check/main

# Run functions that last more than one tick
execute if score $functionRunning worldtool matches 1 run function worldtool:load_process/load2_fill

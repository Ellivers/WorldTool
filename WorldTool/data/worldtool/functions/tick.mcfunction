# Called by #minecraft:tick
# If a process is done
execute if score $functionRunning worldtool matches 1 if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool = $pos2z worldtool as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_drawer,tag=!ticking] run function worldtool:aligned_done

# If a process is running and monitor performance is on
execute if score $functionRunning worldtool matches 1 if score $monitorPerformance worldtool matches 1.. run function worldtool:monitor_performance/tick

execute if score $functionRunning worldtool matches 1 unless score #drawerError worldtool matches 1 unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_drawer] as @a[tag=wt_started_function,limit=1] run function worldtool:ui_general/errors/no_drawer
execute if score $functionRunning worldtool matches 1 if score #drawerError worldtool matches 1 if entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_drawer] as @a[tag=wt_started_function,limit=1] run function worldtool:ui_general/drawer_found

# The player gets to do stuff too
execute as @a at @s run function worldtool:player_tick
# Check for a block while in some menus
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check,tag=!waiting] at @s run function worldtool:block_check/main

# Run processes that last more than one tick
execute if score $functionRunning worldtool matches 1 run function worldtool:load_process/load2_fill

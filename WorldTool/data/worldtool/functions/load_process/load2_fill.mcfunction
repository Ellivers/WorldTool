# This function is here to break apart drawing large areas into several ticks. This is because 1) it reduces lag, and 2) the command chain limit
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_drawer] at @s run function worldtool:load_process/load2_fill.tags

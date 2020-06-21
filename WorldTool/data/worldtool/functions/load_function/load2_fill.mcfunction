#This function is here to break apart filling/cloning large areas into several ticks. This is because 1: it reduces lag, and 2: the command chain limit
scoreboard players reset #blockschecked worldtool

execute as @e[type=minecraft:area_effect_cloud,tag=wt_drawer] at @s run function worldtool:load_function/load2_fill.tags
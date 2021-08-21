# Called by various functions
# Spawns a wt_check aec made for detecting primary blocks

scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:ui/kill_wt_check
summon minecraft:area_effect_cloud ~ 1 ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_check","primary","worldtool"]}
execute positioned ~ 1 ~ run scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check,sort=nearest,limit=1] wt_ID = @s wt_ID

# Set up the area to detect blocks in an air space
fill ~ 0 ~-1 ~2 2 ~1 minecraft:bedrock hollow
#setblock ~1 1 ~ minecraft:air
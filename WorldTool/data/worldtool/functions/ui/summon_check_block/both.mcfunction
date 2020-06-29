execute as @e[type=minecraft:area_effect_cloud,tag=wt_check] if score @s wt_ID = @p wt_ID at @s run function worldtool:ui/kill_check_block
summon minecraft:area_effect_cloud ~ 1 ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_check","both"]}
execute positioned ~ 1 ~ run scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=wt_check,sort=nearest,limit=1] wt_ID = @s wt_ID

fill ~-2 0 ~-1 ~2 2 ~1 minecraft:bedrock
setblock ~-1 1 ~ minecraft:air
setblock ~1 1 ~ minecraft:air
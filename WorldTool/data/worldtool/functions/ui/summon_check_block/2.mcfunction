execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID run kill @s
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["check_block"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=check_block,sort=nearest,limit=1] wt_ID = @s wt_ID
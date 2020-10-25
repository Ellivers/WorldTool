# Summon the 2 positions for 
execute unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brushpos1,distance=..1] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["brushpos1","worldtool"]}
execute unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brushpos2,distance=..1] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["brushpos2","worldtool"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brushpos1,sort=nearest,limit=1] wt_ID = @s wt_ID
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brushpos2,sort=nearest,limit=1] wt_ID = @s wt_ID

scoreboard players set $brush_out worldtool 0
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brushpos1,sort=nearest,limit=1] at @s run function worldtool:brush/brushes/flat/expand
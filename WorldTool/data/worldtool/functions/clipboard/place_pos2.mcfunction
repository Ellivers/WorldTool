summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["clipboard_marker2","placing"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=clipboard_marker2,tag=placing,sort=nearest,limit=1] wt_ID = @s wt_ID

#execute if score #tempPos

tag @e[type=minecraft:area_effect_cloud,tag=clipboard_marker2,tag=placing,sort=nearest,limit=1] remove placing
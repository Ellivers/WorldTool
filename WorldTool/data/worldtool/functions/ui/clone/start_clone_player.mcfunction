summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_waiting_marker"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,sort=nearest,limit=1] wt_ID = @s wt_ID

function worldtool:ui/clone/start.check
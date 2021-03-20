summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_waiting_marker","worldtool"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_waiting_marker,sort=nearest,limit=1] wt_ID = @s wt_ID

function worldtool:ui_general/menus/clone/start.check1
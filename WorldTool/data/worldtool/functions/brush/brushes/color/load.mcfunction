summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["setblock_source"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=setblock_source,sort=nearest,limit=1] wt_ID = @s wt_ID
function worldtool:brush/brushes/paint/load_select_area
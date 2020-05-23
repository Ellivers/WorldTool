summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["cmdpos1marker"]}
execute unless entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] run function worldtool:cmd/pos1_set
execute if score $STOPPOS1 worldtool matches 0 run schedule function worldtool:cmd/set_pos1 1t
schedule function worldtool:cmd/stop_it_please/pos1 1t
scoreboard players set $STOPPOS1 worldtool 1
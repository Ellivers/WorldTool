summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["cmdpos2marker"]}
execute unless entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] run function worldtool:cmd/pos2_set
execute if score $STOPPOS2 worldtool matches 0 run schedule function worldtool:cmd/set_pos2 1t
schedule function worldtool:cmd/stop_it_please/pos2 1t
scoreboard players set $STOPPOS2 worldtool 1
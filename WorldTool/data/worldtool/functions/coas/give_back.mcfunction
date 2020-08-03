data modify entity @s PickupDelay set value 0s
tag @p[scores={wt_drop_coas=1..}] add brush_tick
tp @p[scores={wt_drop_coas=1..}]
scoreboard players reset @a wt_drop_coas
data modify entity @s PickupDelay set value 0s
tag @p add wt_gentool_dropped
tp @p
schedule function worldtool:coas/gen_tick 2t

data modify entity @s PickupDelay set value 0s
tag @p add brush_tick
tp @p
schedule function worldtool:coas/brush_tick 2t
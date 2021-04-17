tp @s @p[scores={wt_drop_coas=1..}]
data modify entity @s PickupDelay set value 0s
data modify entity @s Owner set from entity @p[scores={wt_drop_coas=1..}] UUID

# Called by various functions
# Returns the dropped tool to the player's inventory

data modify entity @s Owner set from entity @a[scores={wt.drop_coas=1..},limit=1] UUID
data modify entity @s PickupDelay set value 0s
tp ~ ~ ~

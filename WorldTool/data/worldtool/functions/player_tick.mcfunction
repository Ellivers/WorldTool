# Called by worldtool:tick
# Commands ran by players each tick
execute if score @s wt_click matches 1.. anchored eyes positioned ^ ^ ^ run function worldtool:click
execute if entity @s[tag=wt_block_check] run function worldtool:block_check/player

# If the player dropped a tool
execute if score @s wt_drop_coas matches 1.. run function worldtool:coas/check_entity

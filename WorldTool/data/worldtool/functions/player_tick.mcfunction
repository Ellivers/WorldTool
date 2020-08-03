# Called by worldtool:tick
# Functions ran by players each tick
execute if score @s wt_click matches 1.. anchored eyes positioned ^ ^ ^ run function worldtool:click
execute unless entity @s[tag=!check_block_brush,tag=!check_block_replacebrush] run function worldtool:block_check/player

# If someone dropped a tool
execute if score @s wt_drop_coas matches 1.. as @e[type=minecraft:item,nbt={Age:0s,Item:{tag:{worldTool:1b}}},sort=nearest,limit=1] at @s run function worldtool:coas/dropped_coas
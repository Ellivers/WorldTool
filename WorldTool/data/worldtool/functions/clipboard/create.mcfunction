# If you're checking out the code, this is probably the file you'll look at first in this folder.
# This is a WIP clipboard system. Not ready for use. It can currently only partly save a selected area.
# Don't use it.

# The clipboard currently only works for one player.
forceload add 1000 3000000
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clipboard_marker2] if score @s wt_ID = @p wt_ID run kill @s
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clipboard_marker1] if score @s wt_ID = @p wt_ID run kill @s
summon minecraft:area_effect_cloud 1000 50 3000000 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["clipboard_marker1","placing","worldtool"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clipboard_marker1,tag=placing,sort=nearest,limit=1] wt_ID = @s wt_ID
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clipboard_marker1,tag=placing,sort=nearest,limit=1] remove placing
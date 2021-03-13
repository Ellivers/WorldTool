scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos1] if score @s wt_ID = #ID_temp worldtool run kill @s
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2] if score @s wt_ID = #ID_temp worldtool run kill @s

summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_clone_preview_pos1","wt_particles","worldtool"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_clone_preview_pos2","wt_particles","worldtool"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos1,sort=nearest,limit=1] wt_ID = @s wt_ID
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] wt_ID = @s wt_ID

# Get positions
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run function worldtool:particles/clone_preview/position/get_pos1
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2] if score @s wt_ID = #ID_temp worldtool run function worldtool:particles/clone_preview/position/get_pos2


# All possible rotations (there can only be one at a time)
execute if entity @s[tag=mirrorX] run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add mirrorX
execute if entity @s[tag=mirrorY] run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add mirrorY
execute if entity @s[tag=mirrorZ] run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add mirrorZ

execute if score @s wt_rotX matches -90 run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add x_-90
execute if score @s wt_rotY matches -90 run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add y_-90
execute if score @s wt_rotZ matches -90 run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add z_-90

execute if score @s wt_rotX matches 180 run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add x_180
execute if score @s wt_rotY matches 180 run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add y_180
execute if score @s wt_rotZ matches 180 run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add z_180

execute if score @s wt_rotX matches 90 run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add x_90
execute if score @s wt_rotY matches 90 run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add y_90
execute if score @s wt_rotZ matches 90 run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add z_90

# Set position of preview pos2
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2] if score @s wt_ID = #ID_temp worldtool run function worldtool:particles/clone_preview/position/set_pos.prevpos2

function worldtool:particles/clone_preview/position/load1

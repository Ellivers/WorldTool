execute as @e[tag=wt_clone_preview_pos1] if score @s wt_ID = @p wt_ID run kill @s
execute as @e[tag=wt_clone_preview_pos2] if score @s wt_ID = @p wt_ID run kill @s

summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_clone_preview_pos1","wt_particles","worldtool"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_clone_preview_pos2","wt_particles","worldtool"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos1,sort=nearest,limit=1] wt_ID = @s wt_ID
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] wt_ID = @s wt_ID

# Get position of position 1
execute store result score @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] pos1x as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run data get entity @s Pos[0]
execute store result score @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] pos1y as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run data get entity @s Pos[1]
execute store result score @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] pos1z as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run data get entity @s Pos[2]

# Get position of position 2
execute store result score @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] pos2x as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2] if score @s wt_ID = @p wt_ID run data get entity @s Pos[0]
execute store result score @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] pos2y as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2] if score @s wt_ID = @p wt_ID run data get entity @s Pos[1]
execute store result score @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] pos2z as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2] if score @s wt_ID = @p wt_ID run data get entity @s Pos[2]


# All possible rotations (there can only be one at a time)
execute if entity @s[tag=mirrorX] run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add mirrorX
execute if entity @s[tag=mirrorY] run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add mirrorY
execute if entity @s[tag=mirrorZ] run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add mirrorZ

execute if score @s rotX matches -90 run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add x_-90
execute if score @s rotY matches -90 run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add y_-90
execute if score @s rotZ matches -90 run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add z_-90

execute if score @s rotX matches 180 run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add x_180
execute if score @s rotY matches 180 run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add y_180
execute if score @s rotZ matches 180 run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add z_180

execute if score @s rotX matches 90 run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add x_90
execute if score @s rotY matches 90 run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add y_90
execute if score @s rotZ matches 90 run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] add z_90

# Set position of preview pos2
execute at @s as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2] if score @s wt_ID = @p wt_ID run function worldtool:particles/clone_preview/position/set_pos.prevpos2

function worldtool:particles/clone_preview/position/load1
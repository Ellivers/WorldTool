scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos1] if score @s wt_ID = #ID_temp worldtool run kill @s
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2] if score @s wt_ID = #ID_temp worldtool run kill @s

summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_clone_preview_pos1","wt_particles","worldtool"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_clone_preview_pos2","wt_particles","worldtool"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos1,sort=nearest,limit=1] wt_ID = @s wt_ID
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] wt_ID = @s wt_ID

# Get position of position 1
execute store result score @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] wt_pos1x as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run data get entity @s Pos[0]
execute store result score @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] wt_pos1y as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run data get entity @s Pos[1]
execute store result score @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] wt_pos1z as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run data get entity @s Pos[2]

# Get position of position 2
execute store result score @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] wt_pos2x as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2] if score @s wt_ID = #ID_temp worldtool run data get entity @s Pos[0]
execute store result score @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] wt_pos2y as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2] if score @s wt_ID = #ID_temp worldtool run data get entity @s Pos[1]
execute store result score @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,sort=nearest,limit=1] wt_pos2z as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2] if score @s wt_ID = #ID_temp worldtool run data get entity @s Pos[2]


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
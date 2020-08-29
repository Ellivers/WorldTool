execute as @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker] if score @s wt_ID = @p wt_ID run tag @s add check_clone_overlap

# Get position of position 1
execute store result score @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,tag=check_clone_overlap,limit=1] pos1x as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run data get entity @s Pos[0]
execute store result score @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,tag=check_clone_overlap,limit=1] pos1y as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run data get entity @s Pos[1]
execute store result score @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,tag=check_clone_overlap,limit=1] pos1z as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run data get entity @s Pos[2]

# Get position of position 2
execute store result score @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,tag=check_clone_overlap,limit=1] pos2x as @e[type=minecraft:area_effect_cloud,tag=pos2] if score @s wt_ID = @p wt_ID run data get entity @s Pos[0]
execute store result score @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,tag=check_clone_overlap,limit=1] pos2y as @e[type=minecraft:area_effect_cloud,tag=pos2] if score @s wt_ID = @p wt_ID run data get entity @s Pos[1]
execute store result score @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,tag=check_clone_overlap,limit=1] pos2z as @e[type=minecraft:area_effect_cloud,tag=pos2] if score @s wt_ID = @p wt_ID run data get entity @s Pos[2]


# All possible rotations (there can only be one at a time)
execute if entity @s[tag=mirrorX] run tag @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,tag=check_clone_overlap,limit=1] add mirrorX
execute if entity @s[tag=mirrorY] run tag @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,tag=check_clone_overlap,limit=1] add mirrorY
execute if entity @s[tag=mirrorZ] run tag @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,tag=check_clone_overlap,limit=1] add mirrorZ

execute if score @s rotX matches -90 run tag @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,tag=check_clone_overlap,limit=1] add x_-90
execute if score @s rotY matches -90 run tag @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,tag=check_clone_overlap,limit=1] add y_-90
execute if score @s rotZ matches -90 run tag @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,tag=check_clone_overlap,limit=1] add z_-90

execute if score @s rotX matches 180 run tag @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,tag=check_clone_overlap,limit=1] add x_180
execute if score @s rotY matches 180 run tag @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,tag=check_clone_overlap,limit=1] add y_180
execute if score @s rotZ matches 180 run tag @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,tag=check_clone_overlap,limit=1] add z_180

execute if score @s rotX matches 90 run tag @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,tag=check_clone_overlap,limit=1] add x_90
execute if score @s rotY matches 90 run tag @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,tag=check_clone_overlap,limit=1] add y_90
execute if score @s rotZ matches 90 run tag @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,tag=check_clone_overlap,limit=1] add z_90

# Set position of preview pos2
execute at @s as @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,tag=check_clone_overlap] if score @s wt_ID = @p wt_ID run function worldtool:clone/check_overlap/set_cpos2
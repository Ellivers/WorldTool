execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @p rotX
execute unless score @p rotY matches 0 store result entity @s Pose.Head[1] float 1 run scoreboard players get @p rotY
execute if score @p rotY matches 0 run data modify entity @s Pose.Head[1] set value 1f
execute store result entity @s Pose.Head[2] float 1 run scoreboard players get @p rotZ
execute as @p if entity @s[tag=mirrorY] as @e[type=minecraft:armor_stand,tag=show_rot] if score @s wt_ID = @p wt_ID run data modify entity @s Pose.Head[2] set value 180f
execute as @p if entity @s[tag=mirrorZ] as @e[type=minecraft:armor_stand,tag=show_rot] if score @s wt_ID = @p wt_ID run data modify entity @s Pose.Head[1] set value 180f
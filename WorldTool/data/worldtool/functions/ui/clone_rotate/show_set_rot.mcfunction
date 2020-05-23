execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @p rotX
execute unless score @p rotY matches 0 store result entity @s Pose.Head[1] float 1 run scoreboard players get @p rotY
execute if score @p rotY matches 0 run data modify entity @s Pose.Head[1] set value 1f
execute store result entity @s Pose.Head[2] float 1 run scoreboard players get @p rotZ
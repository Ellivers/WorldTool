scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @a if score @s wt_ID = #ID_temp worldtool run tag @s add wt_showsetrot_player
execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @a[tag=wt_showsetrot_player,limit=1] wt_rotX
execute unless score @a[tag=wt_showsetrot_player,limit=1] wt_rotY matches 0 store result entity @s Pose.Head[1] float 1 run scoreboard players get @a[tag=wt_showsetrot_player,limit=1] wt_rotY
execute if score @a[tag=wt_showsetrot_player,limit=1] wt_rotY matches 0 run data modify entity @s Pose.Head[1] set value 1f
execute store result entity @s Pose.Head[2] float 1 run scoreboard players get @a[tag=wt_showsetrot_player,limit=1] wt_rotZ
execute if entity @a[tag=wt_showsetrot_player,tag=mirrorY] run data modify entity @s Pose.Head[2] set value 180f
execute if entity @a[tag=wt_showsetrot_player,tag=mirrorZ] run data modify entity @s Pose.Head[1] set value 180f

tag @a[tag=wt_showsetrot_player,limit=1] remove wt_showsetrot_player

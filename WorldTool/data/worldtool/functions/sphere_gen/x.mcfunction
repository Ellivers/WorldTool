#execute store result score $spheregen_degreesX worldtool run data get entity @s Rotation[1]
scoreboard players operation $spheregen_degreesX worldtool += $spheregen_add_degrees worldtool
#execute store result entity @s Rotation[1] float 1 run scoreboard players get $spheregen_degreesX worldtool
scoreboard players set $spheregen_distance worldtool 0
execute at @s run tp @s ~ ~ ~ ~ ~9
execute at @s positioned ^ ^ ^1 run function worldtool:sphere_gen/ray

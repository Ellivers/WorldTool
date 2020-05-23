summon villager ~ ~ ~ {Invulnerable:1b,Tags:["sphere_gen"],Age:-10000,NoAI:1b,Rotation:[0f,-90f]}
scoreboard players set 2 worldtool 2
#scoreboard players set 100 worldtool 100
scoreboard players set #180 worldtool 180
scoreboard players operation $sphere_radius worldtool = $sphere_diameter worldtool
scoreboard players operation $sphere_radius worldtool /= 2 worldtool
scoreboard players set $spheregen_distance worldtool 0
scoreboard players set $spheregen_degreesX worldtool 0
scoreboard players set $spheregen_degreesY worldtool 0
scoreboard players set #Pi worldtool 314

scoreboard players operation $spheregen_add_degrees worldtool = $sphere_diameter worldtool
scoreboard players operation $spheregen_add_degrees worldtool *= #Pi worldtool
scoreboard players operation $spheregen_add_degrees worldtool /= 2 worldtool
scoreboard players operation $spheregen_add_degrees worldtool /= #180 worldtool

execute as @e[type=villager,tag=sphere_gen] at @s positioned ^ ^ ^1 run function worldtool:sphere_gen/ray
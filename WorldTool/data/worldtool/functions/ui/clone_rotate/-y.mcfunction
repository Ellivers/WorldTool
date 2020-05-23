execute if entity @s[tag=!rotating] if score @s rotY matches 0 run function worldtool:ui/clone_rotate/y-90

execute if entity @s[tag=!rotating] if score @s rotY matches 90 run function worldtool:ui/clone_rotate/reset
execute if entity @s[tag=!rotating] if score @s rotY matches 180 run function worldtool:ui/clone_rotate/y90
execute if entity @s[tag=!rotating] if score @s rotY matches -90 run function worldtool:ui/clone_rotate/y180
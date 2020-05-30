function worldtool:ui/clone_rotate/mirror_off

execute if entity @s[tag=!rotating] if score @s rotZ matches 0 run function worldtool:ui/clone_rotate/z90

execute if entity @s[tag=!rotating] if score @s rotZ matches 90 run function worldtool:ui/clone_rotate/z180
execute if entity @s[tag=!rotating] if score @s rotZ matches 180 run function worldtool:ui/clone_rotate/z-90
execute if entity @s[tag=!rotating] if score @s rotZ matches -90 run function worldtool:ui/clone_rotate/reset
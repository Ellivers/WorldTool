function worldtool:ui_general/clone_rotate/mirror_off

execute if entity @s[tag=!rotating] if score @s wt_rotY matches 0 run function worldtool:ui_general/clone_rotate/y90

execute if entity @s[tag=!rotating] if score @s wt_rotY matches 90 run function worldtool:ui_general/clone_rotate/y180
execute if entity @s[tag=!rotating] if score @s wt_rotY matches 180 run function worldtool:ui_general/clone_rotate/y-90
execute if entity @s[tag=!rotating] if score @s wt_rotY matches -90 run function worldtool:ui_general/clone_rotate/reset
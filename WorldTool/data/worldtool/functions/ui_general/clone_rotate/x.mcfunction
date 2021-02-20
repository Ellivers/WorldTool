function worldtool:ui_general/clone_rotate/mirror_off

execute if entity @s[tag=!rotating] if score @s wt_rotX matches 0 run function worldtool:ui_general/clone_rotate/x90

execute if entity @s[tag=!rotating] if score @s wt_rotX matches 90 run function worldtool:ui_general/clone_rotate/x180
execute if entity @s[tag=!rotating] if score @s wt_rotX matches 180 run function worldtool:ui_general/clone_rotate/x-90
execute if entity @s[tag=!rotating] if score @s wt_rotX matches -90 run function worldtool:ui_general/clone_rotate/reset
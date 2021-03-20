function worldtool:ui_general/menus/clone_rotate/mirror_off

execute if entity @s[tag=!rotating] if score @s wt_rotZ matches 0 run function worldtool:ui_general/menus/clone_rotate/z90

execute if entity @s[tag=!rotating] if score @s wt_rotZ matches 90 run function worldtool:ui_general/menus/clone_rotate/z180
execute if entity @s[tag=!rotating] if score @s wt_rotZ matches 180 run function worldtool:ui_general/menus/clone_rotate/z-90
execute if entity @s[tag=!rotating] if score @s wt_rotZ matches -90 run function worldtool:ui_general/menus/clone_rotate/reset
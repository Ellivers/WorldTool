# Called by worldtool:block_check/main
# Tags for the primary block (at x+1)
execute if entity @s[tag=placing_fill] run function worldtool:ui_general/start_fill
execute if entity @s[tag=replacing_fill2] run function worldtool:ui_general/start_fill
execute if entity @s[tag=hollowing] run function worldtool:ui_general/hollow/start_hollow
execute if entity @s[tag=checkered_select] run function worldtool:ui_general/checkered/start
execute if entity @s[tag=c_replacing_fill2] run function worldtool:ui_general/checkered/replace/start_replace
execute if entity @s[tag=block_select_outline] run function worldtool:ui_general/fill_outline/start
execute if entity @s[tag=destroy_select] run function worldtool:ui_general/destroy/start
execute if entity @s[tag=d_replacing_fill2] run function worldtool:ui_general/destroy/replace/start_replace

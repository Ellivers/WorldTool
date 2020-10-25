# Called by worldtool:block_check/main
# Checks the primary block (at x+1)
execute if entity @s[tag=placing_fill] run function worldtool:load_process/start_check1
execute if entity @s[tag=replacing_fill2] run function worldtool:load_process/start_check1
execute if entity @s[tag=hollowing] run function worldtool:ui/hollow/start_hollow
execute if entity @s[tag=checkered_select] run function worldtool:ui/checkered/start
execute if entity @s[tag=c_replacing_fill2] run function worldtool:ui/checkered/replace/start_replace
execute if entity @s[tag=block_select_outline] run function worldtool:ui/fill_outline/start
execute if entity @s[tag=destroy_select] run function worldtool:ui/destroy/start
execute if entity @s[tag=d_replacing_fill2] run function worldtool:ui/destroy/replace/start_replace
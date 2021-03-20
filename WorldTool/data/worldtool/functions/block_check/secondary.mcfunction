# Called by worldtool:block_check/main
# Tags for the secondary block (at x-1)
execute if entity @s[tag=measure_filter] run function worldtool:ui_general/menus/measure/start
execute if entity @s[tag=replacing_fill1] run function worldtool:ui_general/menus/replace/select_replace2
execute if entity @s[tag=placing_hollow_inner] run function worldtool:ui_general/menus/hollow/inner_block/selected
execute unless entity @s[tag=!placing_filtered,tag=!placing_filtered_reversed] run function worldtool:ui_general/menus/clone/filter/select_filter
execute unless entity @s[tag=!wt_placing_replace_greenery,tag=!wt_placing_replace_greenery_reversed] run function worldtool:ui_general/menus/greenery/replace/selected
execute if entity @s[tag=rnd_replacingfill1] run function worldtool:ui_general/menus/randomize/replace/start
execute if entity @s[tag=c_replacing_fill1] run function worldtool:ui_general/menus/checkered/replace/select_replace2
execute if entity @s[tag=d_replacing_fill1] run function worldtool:ui_general/menus/destroy/replace/select_replace2
